import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Item {
    
    property var fetch_return : ponte.fetch_image('nada')

    Rectangle {
        id: inic
        color: fetch_return[1]
        anchors.fill: parent
/*         anchors {
            verticalCenter: parent.verticalCenter
            left: parent.left
            top: parent.top
            topMargin: 300
            leftMargin: 500
        } */
       /*  width: animation.widthvisible = false */
        AnimatedImage {
            width: 200
            height: 200
            id: animation
            source : fetch_return[2]
            anchors{
                left: parent.left
                top: parent.top
                topMargin: 300
                leftMargin: 500
            }
            Text{
                id : estado
                color: "white"
                font.pointSize: 30
                text: fetch_return[0]
                anchors{
                    left: parent.left
                    top: parent.top
                    topMargin: 240
                    leftMargin: 70
                }
            }
        }
/*         Button{ 
            text: 'Atualizar!'
            width: 150
            onClicked:{
                var fetch_return = ponte.fetch_image('nada')
             if( fetch_return == "1"){
                    estado.text = "Feliz"
                }

            }
        } */
        
/*         Rectangle {
            property int frames: animation.frameCount
            width: 4; height: 8
            color: "red"
        } */
    }
}

/* 
   Rectangle {
        id: reet
        anchors {
        verticalCenter: parent.verticalCenter
            left: parent.left
            top: parent.top
            topMargin: 300
            leftMargin: 500
        }
        width: animation.widthvisible = false
        AnimatedImage {
            width: 200
            height:200
            id: animation
        }   
    }

    Row{
        anchors.verticalCenter: parent.verticalCenter   
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 40
        Button{
            text: 'Feliz!'
            width: 150
            anchors{
                top: parent.top
                topMargin: 150
            }            
            onClicked:{
                animation.source =''
                animation.source = "image/greens-swag.gif"
            }
        }

        Button{
            text: 'Mais ou menos'
            width: 150
            anchors{
                top: parent.top
                topMargin: 150
            }            
            onClicked:{
                animation.source = ''
                animation.source= "image/cute-plants.gif"
            }
        }
        Button{
            id: bff
            text: 'Triste!'
            width: 150
            anchors{
                top: parent.top
                topMargin: 150
            }            
            onClicked:{
                animation.source = ''
                animation.source = "image/emo-cute-emo.gif"
            }
        }
    } */