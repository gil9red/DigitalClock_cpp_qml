import QtQuick 2.0
import QtQuick.Layouts 1.1

Rectangle {
    id : clock
    property alias running: timer.running
    property date date

    antialiasing: true

    width: spinnerLayout.width
    height: spinnerLayout.height

    color : "black"

    Timer {
        id : timer
        interval: 500; running: true; repeat: true
        onTriggered: date = new Date;
    }

    RowLayout {
        id : spinnerLayout
        spacing: 2

        Spinner { max: 24; value: date.getHours(); }
        Rectangle { color : "white"; width: 2; height: 50 }
        Spinner { max: 60; value: date.getMinutes(); }
        Rectangle { color : "white"; width: 2; height: 50 }
        Spinner { max: 60; value: date.getSeconds(); }
    }
}
