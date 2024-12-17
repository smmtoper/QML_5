import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    width: 400
    height: 600
    visible: true
    title: "Task_for_Layout"

    property string headerText: "Header"
    property string contentText: "Body"

    Header {
        id: header
        headerText: window.headerText
        onBackClicked: {
            console.log("Back button clicked")
        }
    }

    Body {
        id: content
        contentText: window.contentText
    }

    Footer {
        id: footer
        onButtonClicked: {
            window.headerText = "Header " + buttonIndex
            window.contentText = "Item " + buttonIndex + " content"
            footer.updateBodyColor(buttonIndex)
        }
    }
}
