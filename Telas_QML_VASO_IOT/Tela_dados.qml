import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

ApplicationWindow {
    id:dados
    visible : true
    width: 1200
    height: 800
    Material.theme: 'Dark'

    Text {
        anchors.centerIn: parent
        text: qsTr("Hello World.")
    }
    Button{
        text: "Voltar"
        onClicked: {
            tt.visible = true
            dados.visible = false
            //dd.source = "Tela_inicial.qml"
            
        }
    }
    Loader{
        id:dd
    }

}