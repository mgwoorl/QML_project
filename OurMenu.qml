import QtQuick 2.15
import QtQuick.Controls 2.15

MenuItem {
    id: menuItem
    property string itemText: ""
    property string pageSource: ""

    height: 30

    signal menuItemClicked(string page)

    MouseArea {
        id: mouseArea

        anchors.fill: parent
        hoverEnabled: true

        onClicked: {
            if (pageSource !== "")
                currentPage = pageSource;
                loadPage();
            }
    }

    background: Rectangle {
        color: mouseArea.containsMouse ? "#B8B9B6" : "#FFFFFF"
        border.width:1
        border.color: "#D7C19F"
    }

    Text {
        anchors.verticalCenter: parent.verticalCenter
        color: "black"
        text: itemText
        font.pixelSize: 16
    }
}
