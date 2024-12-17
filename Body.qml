import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    id: content
    anchors.top: header.bottom
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: footer.top

    color: "lightgray"

    property string contentText: "Content"

    Text {
        id: textContent
        anchors.centerIn: parent
        text: content.contentText
        color: "black"
        font.pointSize: 16
    }

    ColorAnimation {
        id: colorAnimation
        target: content
        property: "color"
        duration: 1000
        easing.type: Easing.InOutQuad
    }

    function changeColor(newColor) {
        colorAnimation.to = newColor
        colorAnimation.start()
    }

    Behavior on contentText {
        NumberAnimation {
            duration: 300
            easing.type: Easing.InOutQuad
        }
    }
}
