import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    ColumnLayout {
        anchors.centerIn: parent

        MyButton {
            Layout.preferredHeight: 100
            Layout.preferredWidth: 200

            name: "Hello"
            value: "World"
            onClicked: console.log("%1/%2".arg(name).arg(value))
        }
    }
}
