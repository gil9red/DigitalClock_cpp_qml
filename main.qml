import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1

ApplicationWindow {
    id : mainWindow
    visible: true
    width: 640
    height: 480
    title: qApp.applicationName + " v" + qApp.applicationVersion + qsTr(" author Ilya Petrash")

    DigitalClock {
        anchors.centerIn: parent;
        scale: Math.min(mainWindow.width / width, mainWindow.height / height) // отмасштабируем по размера окна
    }
}
