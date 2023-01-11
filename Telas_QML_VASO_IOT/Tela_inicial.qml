import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

ApplicationWindow{
    id:tt
    visible : true
    width: 1200
    height: 800
    Material.theme: 'Dark'
    TabBar {
        id: bar
        width: parent.width
        TabButton {
            icon.color: "transparent"
            icon.source: "image/potted-plant.svg"
            font.pixelSize: 20  
            text: qsTr("Home")
/*             onClicked:{
                stackView.push("Tela_inicial.qml")
            } */
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/dialog-information.svg"
            font.pixelSize: 20
            text: qsTr("Status")
             onClicked:{
                stackView.push("Tela_status.qml")
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/evolution-tasks.svg"
            font.pixelSize: 20
            text: qsTr("Evolution")
             onClicked:{
                stackView.push("Tela_evolution.qml")
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/sun.svg"
            font.pixelSize: 20
            text: qsTr("Luminosity")
           onClicked:{
                stackView.push("Tela_luminosity.qml")
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/dialog-information.svg"
            font.pixelSize: 20
            text: qsTr("calibration")
/*             onClicked:{
                stackView.push("Tela_calibration.qml")
            } */
        }
    }
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
    
    StackView {
        id: stackView
        anchors.fill: parent
        replaceEnter: Transition {
            NumberAnimation { property: "opacity"; to: 1.0; duration: 500 }
        }
        replaceExit: Transition {
            NumberAnimation { property: "opacity"; to: 0.0; duration: 500 }
        }
    }

    

/*     StackLayout {
        width: parent.width
        currentIndex: bar.currentIndex
        anchors.centerIn: parent
        Item {
            id: homeTab

        }
        Item {
            id:status_d
            Text {
                font.pixelSize: 60
                text: qsTr("Hello status.")
            }
        }
        Item {
            id:evolution_d
            Text {
                font.pixelSize: 60
                text: qsTr("Hello evolution.")
            }
        }
        Item {
            id:luminosity_d
            Text {
                font.pixelSize: 60
                text: qsTr("Hello luminosity.")
            }
        }
        Item {
            id:calibration_d
            Text {
                font.pixelSize: 60
                text: qsTr("Hello calibration.")
            }
        }
    } */

}

