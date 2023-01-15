import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Item {
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
    }
}


/*     RowLayout {
        anchors.centerIn: parent
        width: parent.width
        Button {
            text: 'Home'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
        Button {
            text: 'Status'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
        Button {
            text: 'Evolution'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
        Button {
            text: 'Luminosity'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
        Button {
            text: 'Calibration'
            Layout.fillWidth: true
            onClicked: {
                load_page(text);
            }
        }
    } */