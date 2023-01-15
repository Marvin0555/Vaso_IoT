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
    title: qsTr("Hello pri")
    header: TabBar {
        id: bar
        width: parent.width
        TabButton {
            icon.color: "transparent"
            icon.source: "image/potted-plant.svg"
            font.pixelSize: 20  
            text: qsTr("Home")
            onClicked:{
                /* stackView.push("Tela_inicial.qml") */
                load_pages('Page inicial')
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/dialog-information.svg"
            font.pixelSize: 20
            text: qsTr("Status")
             onClicked:{
                load_pages('Page status')
                /* stackView.push("Tela_status.qml") */
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/evolution-tasks.svg"
            font.pixelSize: 20
            text: qsTr("Evolution")
             onClicked:{
                load_pages('Page evolution')
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/sun.svg"
            font.pixelSize: 20
            text: qsTr("Luminosity")
           onClicked:{
                load_pages('Page luminosity')
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/dialog-information.svg"
            font.pixelSize: 20
            text: qsTr("calibration")
            onClicked:{
               load_pages('Page calibration')
            } 
        }
    }

    StackView {
        id: stackView
        anchors{
            left: parent.left
            right: parent.left
            bottom: parent.bottom
            top: header.bottom  
        }
        initialItem : tela_inicial

    Component{
        id: tela_inicial
        Tela_inicial2{}
    }
    Component{
        id: tela_status
        Tela_status{}
    }
    Component{
        id: tela_evolution
        Tela_evolution{}
    }
    Component{
        id: tela_calibration
        Tela_calibration{}
    }
    Component{
        id: tela_luminosity
        Tela_luminosity{}
    }




/*         replaceEnter: Transition {
            NumberAnimation { property: "opacity"; to: 1.0; duration: 500 }
        }
        replaceExit: Transition {
            NumberAnimation { property: "opacity"; to: 0.0; duration: 500 }
        } */
    }

function load_pages(page)
{
    switch (page){
        case 'Page inicial':
            stackView.push(tela_inicial);
            break;
        case 'Page status':
            stackView.push(tela_status);
            break;
        case 'Page evolution':
            stackView.push(tela_evolution);
            break;
        case 'Page luminosity':
            stackView.push(tela_luminosity);
            break;
        case 'Page calibration':
            stackView.push(tela_calibration);
            break;
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

