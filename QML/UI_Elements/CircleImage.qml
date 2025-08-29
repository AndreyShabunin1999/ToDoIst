import QtQuick 2.15
import QtGraphicalEffects 1.15

Image {
    id: _root
    property bool rounded: true
    property bool adapt: true

    fillMode: Image.PreserveAspectCrop
    smooth: true

    layer.enabled: rounded
    layer.effect: OpacityMask {
        maskSource: Item {
            width: _root.width
            height: _root.height
            Rectangle {
                anchors.centerIn: parent
                width: _root.adapt ? _root.width : Math.min(_root.width, _root.height)
                height: _root.adapt ? _root.height : width
                radius: Math.min(width, height)
            }
        }
    }
}
