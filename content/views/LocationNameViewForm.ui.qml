

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls

Rectangle {
    id: root
    property alias locationName: locationName.text

    color: "#b3262626"
    radius: 45
    border.color: "#c8555555"
    border.width: 4

    Label {
        id: locationName
        color: "#ffffff"
        text: qsTr("London, Ontario, Canada")
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 24
        fontSizeMode: Text.Fit
    }
}
