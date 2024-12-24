import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.2

Column {
    spacing: 10

    // Заместите это на реальные данные
    Repeater {
        model: 3 // Количество новинок
        delegate: Item {
            width: parent.width
            height: 100

            Column {
                Image {
                    source: "new_cake.png" // Замените на путь к вашей картинке
                    width: 80
                    height: 80
                    fillMode: Image.PreserveAspectFit
                }
                Text { text: "Название новинки" }
                Text { text: "Описание новинки" }
                Text { text: "Цена: 300 руб." }
            }
        }
    }
}
