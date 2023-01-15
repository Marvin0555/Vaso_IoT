import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Item {
    anchors{
        left: parent.left
        top: parent.top
        topMargin: 100
        leftMargin: 100
    }
    ListView{
        width: parent.width
        height: parent.height
        spacing: 100

        model: ListModel{
            ListElement{
                tex: 'Nível de Água :'
                valor: ' 10%'
            }   
            ListElement{
                tex: 'Umidade do Solo :'
                valor: ' 50%'
            }
            ListElement{
                tex: 'Temperatura :'
                valor: ' 30°C'
            }
            ListElement{
                tex: 'pH do solo :'
                valor: ' 7'
            }
            ListElement{
                tex: 'Luminosidade :'
                valor: ' 50%'
            }
        }
        delegate: Rectangle{
    /*         color: 'green'
            width: childrenRect.width
            height: childrenRect.height */
            Text{
                font.pointSize: 30
                color: 'white'
                text: tex + valor
            }
        }
    }
    Image{
        id: img
        width: 400
        height: 400
        //cache : false
        source: "image/pokemon_image.png"
        anchors{
            left: parent.left
            top: parent.top
            topMargin: 20
            leftMargin: 600
        }
    }
}