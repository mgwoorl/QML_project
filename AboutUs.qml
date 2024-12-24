import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Column {
    spacing: 10
    width: parent.width

    Text {
        text: "О компании"
        font.pixelSize: 20
        font.bold: true
    }

    Rectangle {
        width: parent.width
        height: 150
        color: "#f0f0f0"
        anchors.horizontalCenter: parent.horizontalCenter

        Column {
            anchors.fill: parent
            spacing: 10
            Text {
                text: "Название кондитерской"
                font.pixelSize: 18
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Text {
                text: "Наша компания была основана в 2010 году и с тех пор завоевала популярность среди ценителей сладостей и уютной атмосферы.

Мы постоянно совершенствуем наш ассортимент, внедряя новые рецепты и технологии, чтобы удивлять наших гостей свежими вкусами и неожиданными сочетаниями. Наша команда профессионалов старается сделать каждое посещение нашего кафе незабываемым и приятным опытом, который оставит только положительные впечатления.

"
                wrapMode: Text.WordWrap
            }
        }
    }
}
