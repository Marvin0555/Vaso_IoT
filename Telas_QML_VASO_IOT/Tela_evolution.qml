import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Image {
    Rectangle {
       /*  color: 'red' */
        Image{
            id: img
            width: 800
            height: 600
            //cache : false
            source: "image/evolution_e.png"
            anchors{
                left: parent.left
                top: parent.top
                topMargin: 20
                leftMargin: 20
            }
        }
        Text{
            text: "Crescimento de " + " 3% "
            font.pointSize: 20
            color: 'white'
            anchors{
                left: parent.left
                top: parent.top
                topMargin: 50
                leftMargin: 860
            }
        }
    }

}