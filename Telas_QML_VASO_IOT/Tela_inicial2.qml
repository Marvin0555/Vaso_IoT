import QtQuick
import QtQuick.Controls.Material
import QtQuick.Layouts
import QtQuick.Window 

Item {
    RowLayout {
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
    }
}