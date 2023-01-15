import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

ApplicationWindow {
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
                load_page(text)
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/dialog-information.svg"
            font.pixelSize: 20
            text: qsTr("Status")
            onClicked:{
                load_page(text)
                /* stackView.push("Tela_status.qml") */
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/evolution-tasks.svg"
            font.pixelSize: 20
            text: qsTr("Evolution")
            onClicked:{
                load_page(text)
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/sun.svg"
            font.pixelSize: 20
            text: qsTr("Luminosity")
            onClicked:{
                load_page(text)
            } 
        }
        TabButton {
            icon.color: "transparent"
            icon.source: "image/dialog-information.svg"
            font.pixelSize: 20
            text: qsTr("Calibration")
            onClicked:{
               load_page(text)
            } 
        }
    }

    StackView {
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
            top: header.bottom
        }

        id: mystackview
        initialItem: home_page
    }

    Component {
        id: home_page
        Tela_inicial2{}
    }
    Component {
        id: status_page
        Tela_status{}
    }
    Component {
        id: evolution_page
        Tela_evolution{}
    }
    Component {
        id: luminosity_page
        Tela_luminosity{}
    }
    Component {
        id: calibration_page
        Tela_calibration{}
    }

    function load_page(page) {
        switch (page) {
        case 'Home':
            mystackview.push(home_page);
            break;
        case 'Status':
            mystackview.push(status_page);
            break;
        case 'Evolution':
            mystackview.push(evolution_page);
            break;
        case 'Luminosity':
            mystackview.push(luminosity_page);
            break;
        case 'Calibration':
            mystackview.push(calibration_page);
            break;
        }
    }
}