import QtQuick 2.15
import QtQuick.Window 2.15
import Qt.labs.settings 1.0

import "qrc:/QML"

Window {
    id: _mainWindow

    visible: true

    visibility: Qt.Window
    title: qsTr("ToDoIst")

    width: Screen.width * 0.5
    height: Screen.height * 0.4

    minimumWidth: Screen.width * 0.1
    minimumHeight: Screen.height * 0.2

    Settings {
        property alias x: _mainWindow.x
        property alias y: _mainWindow.y
        property alias width: _mainWindow.width
        property alias height: _mainWindow.height
    }

    Rectangle {
        width: parent.width
        height: parent.height

        focus: true

        SideBar {
            id: _sideBar
            anchors{
                left: parent.left
                top: parent.top
                bottom: parent.bottom
            }
        }

        //TopBar {
        //    id: _topBar
        //    z: 1
        //    width: parent.width - _sideBar.width
        //    height: 0
        //    visible: false
        //    anchors {
        //        left: _sideBar.right
        //        top: parent.top
        //    }
        //}

        //MainContent {
        //    id: _mainContent
        //    width: parent.width - _sideBar.width
        //    height: parent.height - _topBar.height
        //    anchors {
        //        left: _sideBar.right
        //        right: _mainWindow.right
        //        top: _topBar.bottom
        //    }
        //}
    }

}
