import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Column {
    spacing: 10
    width: parent.width

    // Хранилище для текущего активного компонента
    property string currentPage: "about"

    Row {
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Button {
            text: "О компании"
            font.pixelSize: 20
            font.bold: true
            //border.color: currentPage === "about" ? "gold" : "transparent"
            onClicked: {
                currentPage = "about"; // Устанавливаем активную страницу "О компании"
            }
        }

        Button {
            text: "Отзывы"
            font.pixelSize: 20
            font.bold: true
            //border.color: currentPage === "comments" ? "gold" : "transparent"
            onClicked: {
                currentPage = "comments"; // Устанавливаем активную страницу "Отзывы"
            }
        }
    }

    // Контентный блок, который будет переключаться в зависимости от состояния currentPage
    Item {
        id: contentArea
        width: parent.width

        // Содержимое для "О компании"
        Column {
            visible: currentPage === "about"

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
                        text: "Наша компания была основана в 2010 году и с тех пор завоевала популярность среди ценителей сладостей и уютной атмосферы. Мы постоянно совершенствуем наш ассортимент, внедряя новые рецепты и технологии, чтобы удивлять наших гостей свежими вкусами и неожиданными сочетаниями. Наша команда профессионалов старается сделать каждое посещение нашего кафе незабываемым и приятным опытом, который оставит только положительные впечатления."
                        wrapMode: Text.WordWrap
                    }
                }
            }
        }

        // Содержимое для "Отзывы"
        Column {
            visible: currentPage === "comments"
            // Существующие отзывы
            Text {
                text: "Существующие отзывы:"
                font.pixelSize: 18
            }


            CommentForm {}

            ListView {
                id: my_list;
                anchors.fill:parent;
                model:my_model;
                    delegate: MyDelegate{
                        username: model.username;
                        content:  model.content;
                    }
                }

                ListModel {
                    id: my_model;
                    ListElement { username: "Марио"; content: "Приветик";}
                }
        }
    }
}
