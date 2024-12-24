
import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 480
    height: 720
    color:"#fcfcee"

    Column {
        anchors.fill: parent  // ScrollView заполняет родительский Rectangle

        SwipeView {
            background: Rectangle { color: "black" }
            id: view
            currentIndex: 1
            width: parent.width
            height: parent.height * 0.4

            Item {
                id: firstPage
                Image {
                    source: "resources/1.jpg"
                    anchors.centerIn: parent
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                }
            }
            Item {
                id: secondPage
                Image {
                    source: "resources/2.jpg"
                    anchors.centerIn: parent
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                }
            }
            Item {
                id: thirdPage
                Image {
                    source: "resources/3.jpg"
                    anchors.centerIn: parent
                    height: parent.height
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        PageIndicator {
            id: indicator
            count: view.count
            anchors.top: view.bottom
            currentIndex: view.currentIndex
            anchors.horizontalCenter: parent.horizontalCenter
        }


    }
}
