import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ToolButton {
    id: root

    property string name: ""
    property string value: ""

    implicitWidth: 60
    implicitHeight: 20
    background: Rectangle {
        id: backgroundItem

        readonly property alias down: buttonMouseArea.pressed

        border.color: down ? "black" : "grey"
        border.width: 5

        RowLayout {
            anchors.margins: 5
            anchors.fill: parent
            spacing: 0

            Label {
                Layout.fillWidth: true
                Layout.preferredWidth: 32
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                text: root.name
                background: Rectangle {
                    color: backgroundItem.down ? "darkorange" : "orange"
                }
            }
            Label {
                Layout.fillWidth: true
                Layout.preferredWidth: 32
                Layout.fillHeight: true
                Layout.alignment: Qt.AlignVCenter | Qt.AlignHCenter

                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                color: backgroundItem.down ? "darkred" : "red"
                text: root.value
                background: Rectangle {
                    color: backgroundItem.down ? "darkgreen" : "green"
                }
            }
        }
        MouseArea {
            id: buttonMouseArea

            anchors.fill: parent
            onClicked: root.clicked()
        }
    }
}
