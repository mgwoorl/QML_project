import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 480
    height: 720
    visible: true
    color:"#fff0da"

    property bool menuVisible: false
    property string currentPage: "HomePage.qml"

    Timer {
            id: closeTimer
            interval: 100
            repeat: false

            onTriggered: {
                menuVisible = false;
                burgerButtonText.text = "☰";
            }
        }

    ToolBar {
        background: Rectangle { color: "#FFFFFF" }
        id: header
        height: 70
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width

        Row {
            anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            spacing: 10 // Увеличим отступ между элементами

            Image {
                id: logo
                source: "resourses/logo.png"
                width: 50
                height: 50
                fillMode: Image.PreserveAspectFit
            }

            // Название кондитерской
            Text {
                id: bakeryName
                text: "Sweet Cake"
                color: "#000000" // Цвет текста
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
            }

            // Номер телефона
            Text {
                id: phoneNumber
                text: "8 (800) 123-45-67"
                color: "#000000" // Цвет текста
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
            }

            // Кнопка "бургер" или крестик
            Button {
                id: burgerButton
                anchors.verticalCenter: parent.verticalCenter
                height: parent.height
                width: 50 // Уменьшил ширину кнопки
                Text {
                    anchors.centerIn: parent
                    id: burgerButtonText
                    color: "#000000"
                    text: "☰" // Символ "бургер"
                    font.pixelSize: 30 // Меньший размер шрифта для кнопки
                }

                background: Rectangle { color: "#FFFFFF" }

                onClicked: {
                    if (menuVisible) {
                        closeTimer.start();
                        menu.close();
                    }

                    else {
                        menuVisible = true;
                        burgerButtonText.text = "✖";
                        menu.x = burgerButton.x;
                        menu.y = burgerButton.y + burgerButton.height;
                        menu.open();
                    }
                }
            }
        }
    }

    Menu {
        id: menu
        font.pixelSize: 20

        onClosed: {
            if (menuVisible) {
                closeTimer.start();
            }

            burgerButtonText.text = "☰";
        }

        OurMenu {
            itemText: "Главная"
            pageSource: "HomePage.qml"
        }

        OurMenu{
            itemText: "Торты"
            pageSource: "CatalogPage.qml"
        }

        OurMenu{
            itemText: "Десерты и выпечка"
            pageSource: "CakesMenu.qml"
        }

        OurMenu{
            itemText: "О нас"
            pageSource: "AboutUs.qml"
        }

        OurMenu{
            itemText: "Акции и мероприятия"
            pageSource: "ProfilePage.qml"
        }
    }

    Loader {
        id: pageLoader
            anchors.top: header.bottom
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right

            onLoaded: {
                if (pageLoader.item) {
                    pageLoader.item.visible = true;
                }
            }
    }

    Component.onCompleted: {
        loadPage()
    }

    function loadPage() {
        pageLoader.source = currentPage;
    }
}
