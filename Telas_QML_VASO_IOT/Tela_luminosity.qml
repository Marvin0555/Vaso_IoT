import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 
import Qt5Compat.GraphicalEffects


Item {

    Slider {
        id: slider
        from: 0
        value: 0
        to: 100
        stepSize: 1
        width: 500
        height: 50
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 50
            leftMargin: 100
        }
        ToolTip {
            parent: slider.handle
            visible: slider.pressed
            text: slider.value.toFixed(1)
        }
    }


    Image {
        id: butterfly
        source: "image/pokemon_image.png"
        sourceSize: Qt.size(parent.width, parent.height)

    }

    Glow {
        anchors.fill: butterfly
        radius: 3
        samples: 17
        color: "white"
        source: butterfly
    }
    Text{
        text: "Luminosidade do vaso em  " +  slider.value + " %"
        font.pointSize: 20
        color: 'white'
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 50
            leftMargin: 700
        }
     }
}