import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import "qrc:/QML/UI_Elements"
import "qrc:/QML/Utils/UtilFunctions.js" as Utils

import ToDoIst.Dimension 1.0
import ToDoIst.Style 1.0

Rectangle {
    id: _root
    height: parent.height
    width: Dimension.widthSideBarOpen

    Behavior on width {
        NumberAnimation { duration: 200; easing.type: Easing.InOutQuad }
    }

    property bool isOpenSideBar: true
    onIsOpenSideBarChanged: {
        _root.color = (isOpenSideBar)? Style.primaryBG : "white"
    }

    color: (isOpenSideBar)? Style.primaryBG : "white"

    // Меню страниц приложения
    property alias menuModel: _menuModel
    ListModel {
        id: _menuModel
        ListElement {  icon: ""; titleItemMenu: ""; url: ""; titlePage: ""; action: "" }
    }

    Item {
        id: _headerSideBar

        height: 40
        anchors {
            left: parent.left
            right: parent.right
            top: parent.top
            margins: 10
        }

        RowLayout {
            anchors.left: parent.left
            anchors.verticalCenter: parent.verticalCenter
            spacing: 8

            opacity: isOpenSideBar ? 1 : 0
            Behavior on opacity { NumberAnimation { duration: 200 } }

            CircleImage {
                id: _avatarUser
                width: 30
                height: 30
                sourceSize: Dimension.imageLarge
                source: Utils.image("avatarUser.jpg")
                Layout.alignment: Qt.AlignVCenter
            }

            Label {
                id: _userName
                text: "Andrey"
                color: "black"
                font.pixelSize: Dimension.fontLarge
                font.bold: true
                Layout.alignment: Qt.AlignVCenter
            }

            Image {
                id: _chevronMenuUser
                width: 16
                height: 16
                source: Utils.image("chevron-down.svg")
                sourceSize: Dimension.imageSmall
                Layout.alignment: Qt.AlignVCenter

                MouseArea {
                    anchors.fill: parent
                    onClicked: _chevronMenuUser.rotation = (_chevronMenuUser.rotation == 180) ? 0 : 180
                }
            }
        }


        Row {

            anchors {
                right: parent.right
                top: parent.top
                bottom: parent.bottom
            }

            spacing: 8

            Image {
                id: _btnNotification

                width: 20
                height: 20

                source: Utils.image("ic_notification.svg")
                sourceSize: Dimension.imageMedium

                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        _btnNotification.source = Utils.image("ic_notification_active.svg")
                    }
                }
            }

            Image {
                id: _BtnSidebar

                width: 20
                height: 20

                source: Utils.image("ic_sidebar.svg")
                sourceSize: Dimension.imageMedium

                anchors.verticalCenter: parent.verticalCenter

                MouseArea {
                    anchors.fill: parent

                    onClicked: {
                        isOpenSideBar = !isOpenSideBar
                        _root.width = (isOpenSideBar) ? Dimension.widthSideBarOpen : Dimension.widthSideBarClosed
                    }
                }
            }
        }
    }
}
