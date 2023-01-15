import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Item {
    Rectangle {
        anchors.fill: parent
        color: 'green'
        Button {
            anchors.centerIn: parent
            text: 'Exit'
            onClicked: {
                Qt.quit();
            }
        }
    }
}