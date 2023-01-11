import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Image {
    id:status_d
    visible : true
    Rectangle{
        anchors.centerIn: parent
        color: "blue"
        height: parent.height
        width: parent.width / 2
        Text {
            anchors.centerIn: parent
            font.pixelSize: 60
            text: qsTr("Hello status.")
        }
    }

}