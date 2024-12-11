#include <QApplication>
#include <QWidget>
#include <QVBoxLayout>
#include <QLineEdit>
#include <QPushButton>
#include <QTextBrowser>
#include <QLabel>
#include <QFileDialog>
#include <pthread.h>
#include <QDirIterator>
#include <QMutex>
#include <queue>
#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <thread>
#include <mutex>

class FileSearchApp : public QWidget {
    Q_OBJECT

public:
    FileSearchApp(QWidget *parent = nullptr) : QWidget(parent), m_foundFilesCount(0) {
        setWindowTitle("File Search");
        resize(600, 400);

        QVBoxLayout *layout = new QVBoxLayout(this);

        QLabel *labelFileName = new QLabel("Enter file name:", this);
        layout->addWidget(labelFileName);

        m_fileNameInput = new QLineEdit(this);
        layout->addWidget(m_fileNameInput);

        QLabel *labelDirectory = new QLabel("Enter start directory:", this);
        layout->addWidget(labelDirectory);

        QHBoxLayout *directoryLayout = new QHBoxLayout();
        m_directoryInput = new QLineEdit(this);
        m_directoryInput->setText("/");  // default to root directory
        directoryLayout->addWidget(m_directoryInput);

        QPushButton *browseButton = new QPushButton("Select Directory", this);
        directoryLayout->addWidget(browseButton);
        layout->addLayout(directoryLayout);

        connect(browseButton, &QPushButton::clicked, this, &FileSearchApp::browseDirectory);

        QPushButton *searchButton = new QPushButton("Search", this);
        layout->addWidget(searchButton);

        m_resultsView = new QTextBrowser(this);
        layout->addWidget(m_resultsView);

        connect(searchButton, &QPushButton::clicked, this, &FileSearchApp::startSearch);
    }

private slots:
    void browseDirectory() {
        QString directory = QFileDialog::getExistingDirectory(this, "Select Directory", "/");
        if (!directory.isEmpty()) {
            m_directoryInput->setText(directory);
        }
    }

    void startSearch() {
        m_resultsView->clear();
        m_foundFilesCount = 0;  // сбрасываем счетчик перед новым поиском

        QString fileName = m_fileNameInput->text();
        QString directory = m_directoryInput->text();

        if (fileName.isEmpty() || directory.isEmpty()) {
            m_resultsView->setText("Please specify both the file name and the start directory.");
            return;
        }

        m_resultsView->append("Search started...");

        // Создаем параметры для потока
        SearchParams *params = new SearchParams{directory.toStdString(), fileName.toStdString(), this};

        // Создаем поток
        pthread_t thread;
        if (pthread_create(&thread, nullptr, FileSearchApp::searchDirectory, params) != 0) {
            m_resultsView->append("Failed to create thread.");
            delete params;
            return;
        }

        // Ждем завершения потока с использованием pthread_join
        if (pthread_join(thread, nullptr) != 0) {
            m_resultsView->append("Failed to join thread.");
            delete params;
            return;
        }

        // После завершения потока, обработаем результаты
        processResults();
        // Выводим количество найденных файлов
        m_resultsView->append(QString("Total files found: %1").arg(m_foundFilesCount));
    }

    static void *searchDirectory(void *arg) {
        SearchParams *params = static_cast<SearchParams *>(arg);
        std::string directory = params->directory;
        std::string fileName = params->fileName;
        FileSearchApp *app = params->app;

        QDirIterator it(QString::fromStdString(directory), QDir::Files | QDir::Dirs | QDir::NoDotAndDotDot, QDirIterator::Subdirectories);

        while (it.hasNext()) {
            QString filePath = it.next();
            if (QFileInfo(filePath).fileName() == QString::fromStdString(fileName)) {
                // Помещаем найденный путь в очередь результатов
                std::lock_guard<std::mutex> lock(app->m_mutex);
                app->m_resultsQueue.push(filePath.toStdString());
                app->m_foundFilesCount++;  // увеличиваем счетчик найденных файлов
            }
        }

        // После завершения поиска добавляем сообщение о завершении
        std::lock_guard<std::mutex> lock(app->m_mutex);
        app->m_resultsQueue.push("Search finished.");

        // Удаляем параметры потока после завершения
        delete params;
        return nullptr;
    }

    // Обработка результатов поиска
    void processResults() {
        // Проверяем очередь на наличие результатов
        while (!m_resultsQueue.empty()) {
            std::string result = m_resultsQueue.front();
            m_resultsQueue.pop();
            m_resultsView->append(QString::fromStdString(result));
        }
    }

private:
    struct SearchParams {
        std::string directory;
        std::string fileName;
        FileSearchApp *app;
    };

    QLineEdit *m_fileNameInput;
    QLineEdit *m_directoryInput;
    QTextBrowser *m_resultsView;

    std::mutex m_mutex;  // Мьютекс для синхронизации доступа
    std::queue<std::string> m_resultsQueue;  // Очередь для передачи результатов
    int m_foundFilesCount;  // Счетчик найденных файлов
};

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    FileSearchApp window;
    window.show();

    return app.exec();
}

#include "main.moc"

