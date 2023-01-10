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
    ToolBar{
        width: 1200
        height: 60
        RowLayout{
            id: raw_layout
            anchors.fill: parent
            ToolButton{
                icon.color: "transparent"
                icon.source: "image/potted-plant.svg"
                font.pixelSize: 20  
                text: qsTr("Home")
                onClicked: {
                }
            }

            ToolButton{
                icon.color: "transparent"
                icon.source: "image/dialog-information.svg"
                font.pixelSize: 20
                text: qsTr("status")
                onClicked: {
                    ld.source = ''
                    ld.source = "Tela_status.qml"
                    tt.visible = false
                    //dados.visible = true             
                }
            }

            ToolButton{
                icon.color: "transparent"
                icon.source: "image/evolution-tasks.svg"
                font.pixelSize: 20
                text: qsTr("Evolution")
                onClicked: {
                    ld.source = ''
                    ld.source = "Tela_evolution.qml"
                    tt.visible = false                      
                }
            }

            ToolButton{
                icon.color: "transparent"
                icon.source: "image/sun.svg"
                font.pixelSize: 20
                text: qsTr("luminosity")
                onClicked: {
                    ld.source = ''
                    ld.source = "Tela_luminosity.qml"
                    tt.visible = false                      
                }
            }
            
            ToolButton{
                icon.color: "transparent"
                icon.source: "image/dialog-information.svg"
                font.pixelSize: 20
                text: qsTr("calibration")
                onClicked: {
                    ld.source = ''
                    ld.source = "Tela_calibration.qml"
                    tt.visible = false                         
                }
            }
        }   
    }

    Row{
        anchors.centerIn: parent
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

    Rectangle {
        id: reet
        anchors.centerIn: parent
        width: animation.widthvisible = false
        AnimatedImage {
            width: 200
            height:200
            id: animation
        }   
    }
    Loader{
        id: ld
    }

}

