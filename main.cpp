#include <QApplication>
#include <QWidget>
#include <QVBoxLayout>
#include <QLineEdit>
#include <QPushButton>
#include <QTextBrowser>
#include <QLabel>
#include <QFileDialog>
#include <QThread>
#include <QDirIterator>
#include <QStringList>
#include <QMutex>

class FileSearchWorker : public QThread {
    Q_OBJECT

public:
    FileSearchWorker(const QString &directory, const QString &fileName, QObject *parent = nullptr)
        : QThread(parent), m_directory(directory), m_fileName(fileName) {}

signals:
    void fileFound(const QString &filePath);
    void searchFinished();

protected:
    void run() override {
        searchDirectory(m_directory);
        emit searchFinished();
    }

private:
    QString m_directory;
    QString m_fileName;

    void searchDirectory(const QString &directory) {
        QDirIterator it(directory, QDir::Files | QDir::Dirs | QDir::NoDotAndDotDot, QDirIterator::Subdirectories);
        while (it.hasNext()) {
            QString filePath = it.next();
            if (QFileInfo(filePath).fileName() == m_fileName) {
                emit fileFound(filePath);
            }
        }
    }
};

class FileSearchApp : public QWidget {
    Q_OBJECT

public:
    FileSearchApp(QWidget *parent = nullptr) : QWidget(parent) {
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
        m_directoryInput->setText("/");
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

        QString fileName = m_fileNameInput->text();
        QString directory = m_directoryInput->text();

        if (fileName.isEmpty() || directory.isEmpty()) {
            m_resultsView->setText("Please specify both the file name and the start directory.");
            return;
        }

        FileSearchWorker *worker = new FileSearchWorker(directory, fileName, this);

        connect(worker, &FileSearchWorker::fileFound, this, &FileSearchApp::onFileFound);
        connect(worker, &FileSearchWorker::searchFinished, this, &FileSearchApp::onSearchFinished);
        connect(worker, &FileSearchWorker::finished, worker, &QObject::deleteLater);

        m_resultsView->append("Search started...");
        worker->start();
    }

    void onFileFound(const QString &filePath) {
        m_resultsView->append(filePath);
    }

    void onSearchFinished() {
        m_resultsView->append("Search finished.");
    }

private:
    QLineEdit *m_fileNameInput;
    QLineEdit *m_directoryInput;
    QTextBrowser *m_resultsView;
};

int main(int argc, char *argv[]) {
    QApplication app(argc, argv);

    FileSearchApp window;
    window.show();

    return app.exec();
}

#include "main.moc"
