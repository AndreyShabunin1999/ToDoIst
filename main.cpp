#include <QGuiApplication>
#include <QApplication>
#include <QQmlApplicationEngine>
#include <QIcon>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QApplication app(argc, argv);

    app.setOrganizationName("MyCompany");
    app.setOrganizationDomain("mycompany.com");
    app.setApplicationName("Todoist");
    app.setWindowIcon(QIcon(":/QML/icons/icon_app.svg"));

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/QML/main.qml"));

    qmlRegisterSingletonType(QUrl("qrc:/QML/Utils/Dimension.qml"), "ToDoIst.Dimension", 1, 0, "Dimension");
    qmlRegisterSingletonType(QUrl("qrc:/QML/Utils/Style.qml"), "ToDoIst.Style", 1, 0, "Style");

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
