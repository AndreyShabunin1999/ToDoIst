import QtQuick 2.15

Item {
    id: _root
    height: parent.height

    // Меню страниц приложения
    property alias menuModel: _menuModel
    ListModel {
        id: _menuModel
        ListElement {  icon: ""; titleItemMenu: ""; url: ""; titlePage: ""; action: "" }
    }

    Item {
        Image {
            id: _avatarUser
            source: Dimension.imageSmall
        }
    }
}
