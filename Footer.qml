import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: footer
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    height: parent.height * 0.1
    color: "gray"

    signal buttonClicked(int buttonIndex)

    property int activeButton: 0

    RowLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 30

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height
            color: "lightgray"
            border.color: "black"

            Text {
                id: buttonText1
                anchors.centerIn: parent
                text: "item 1"
                color: footer.activeButton === 1 ? "black" : "gray"
                font.pointSize: 16
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    footer.activeButton = 1
                    footer.buttonClicked(1)
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height
            color: "lightgray"
            border.color: "black"

            Text {
                id: buttonText2
                anchors.centerIn: parent
                text: "item 2"
                color: footer.activeButton === 2 ? "black" : "gray"
                font.pointSize: 16
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    footer.activeButton = 2
                    footer.buttonClicked(2)
                }
            }
        }

        Rectangle {
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height
            color: "lightgray"
            border.color: "black"

            Text {
                id: buttonText3
                anchors.centerIn: parent
                text: "item 3"
                color: footer.activeButton === 3 ? "black" : "gray"
                font.pointSize: 16
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    footer.activeButton = 3
                    footer.buttonClicked(3)
                }
            }
        }
    }


    function updateBodyColor(buttonIndex) {
        switch (buttonIndex) {
            case 1:
                content.changeColor("red")
                break
            case 2:
                content.changeColor("yellow")
                break
            case 3:
                content.changeColor("green")
                break
        }
    }
}
