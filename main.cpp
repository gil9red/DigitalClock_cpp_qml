#include <QApplication>
#include <QFileInfo>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDateTime>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    app.setApplicationName(QFileInfo(app.applicationFilePath()).baseName());
    app.setApplicationVersion("0.0.1");

    QQmlApplicationEngine engine;
    QQmlContext * root = engine.rootContext();
    root->setContextProperty("qApp", qApp);

    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    return app.exec();
}
