import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Image {
    id:luminosity_d
    visible : true
    width: 1200
    height: 800
    Material.theme: 'Dark'

    Text {
        anchors.centerIn: parent
        font.pixelSize: 60
        text: qsTr("Hello luminosity.")
    }
}