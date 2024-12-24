import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Row {
    height: 50
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    spacing: 10

    Text {
        text: "© 2024 Sweet Cake"
        font.pixelSize: 14
        anchors.verticalCenter: parent.verticalCenter
    }
}
