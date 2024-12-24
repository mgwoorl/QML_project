import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Rectangle {
    width: 400
    color: "white"

    Column {
        spacing: 15
        anchors.fill: parent

        // Поле для имени
        ColumnLayout {
            Text {
                text: "Имя"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
            }
            TextField {
                placeholderText: "Введите ваше имя"
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
            }
        }

        // Поле для email
        ColumnLayout {
            Text {
                text: "Email"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
            }
            TextField {
                placeholderText: "Введите ваш email"
                width: parent.width
                horizontalAlignment: Text.AlignHCenter
            }
        }

        // Поле для текста отзыва
        ColumnLayout {
            Text {
                text: "Текст отзыва"
                font.bold: true
                horizontalAlignment: Text.AlignHCenter
            }
            TextArea {
                placeholderText: "Напишите ваш отзыв"
                width: parent.width
                height: 100
            }
        }

        // Оценка с серыми звездочками
        Row {
            Text {
                text: "Оценка"
                font.bold: true
                anchors.verticalCenter: parent.verticalCenter
            }
            // Звезды заполнены по умолчанию
            Row {
                spacing: 5
                anchors.verticalCenter: parent.verticalCenter
                Repeater {
                    model: 5 // Количество звезд
                    Rectangle {
                        width: 30
                        height: 30
                        color: "lightgray" // Цвет звезд
                        Text {
                            anchors.centerIn: parent
                            text: "★"
                            color: "black"
                        }
                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                // Логика для выбора звезды
                                console.log("Звезда выбрана");
                            }
                        }
                    }
                }
            }
        }

        // Чекбокс для согласия с политикой конфиденциальности
        Row {
            CheckBox {
                id: checkBoxAgree
            }
            Text {
                text: "Я согласна с политикой конфиденциальности"
            }
        }

        // Кнопка отправить
        Button {
            text: "Отправить"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                // Логика для обработки отправки отзыва
                console.log("Отзыв отправлен!");
            }
        }
    }
}
