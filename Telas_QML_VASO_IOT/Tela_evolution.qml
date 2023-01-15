import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Image {
    Rectangle {
        anchors.fill: parent
        color: 'red'
        Button {
            anchors.centerIn: parent
            text: 'Exit'
            onClicked: {
                Qt.quit();
            }
        }
    }

}