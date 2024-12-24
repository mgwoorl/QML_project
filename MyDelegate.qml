import QtQuick 2.15

Item {
    id:deleg

    property string username: "?"
    property string content: "?"

    width:parent.width
    height:70

    Rectangle{
        id: rect

        border.color: "darkgrey"

        radius: 5

        anchors.fill: parent
        anchors.margins: 9

        gradient:Gradient{
            GradientStop{position:0;color: "lightgray"}
            GradientStop{position:1;color: "white"}
        }

        Text{
            font.pointSize: 11
            text: username

            anchors.left: parent.left

            padding: 5
        }

        Text{
            font.pointSize: 13
            text: content

            anchors.left: parent.left
            anchors.bottom: parent.bottom

            padding: 5
        }
    }
}
