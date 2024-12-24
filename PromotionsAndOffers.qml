import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Column {
    spacing: 10

    // Заместите это на реальные данные
    Repeater {
        model: 3 // Количество предложений
        delegate: Item {
            width: parent.width
            height: 100

            Column {
                Image {
                    source: "logo.png" // Замените на путь к вашей картинке
                    width: 80
                    height: 80
                    fillMode: Image.PreserveAspectFit
                }
                Text { text: "Название торта" }
                Text { text: "Описание торта" }
                Text { text: "Цена: 500 руб." }
            }
        }
    }
}
