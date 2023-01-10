import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

ApplicationWindow {
    id:calibration_d
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

    Text {
        anchors.centerIn: parent
        font.pixelSize: 60
        text: qsTr("Hello calibration.")
    }
    Button{
        text: "Voltar"
        onClicked: {
            //tt.visible = true
            calibration_d.close()
            //onClosing : dd.source = "Tela_inicial.qml"
            //dd.source = "Tela_inicial.qml"
            tt.visible = true
            
        }
    }
/*     Loader{
        id:dd
    } */

}