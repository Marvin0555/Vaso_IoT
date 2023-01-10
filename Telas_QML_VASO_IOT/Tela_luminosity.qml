import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

ApplicationWindow {
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
    Button{
        text: "Voltar"
        onClicked: {
            //tt.visible = true
            luminosity_d.close()
            //onClosing : dd.source = "Tela_inicial.qml"
            //dd.source = "Tela_inicial.qml"
            tt.visible = true
            
        }
    }
/*     Loader{
        id:dd
    } */

}