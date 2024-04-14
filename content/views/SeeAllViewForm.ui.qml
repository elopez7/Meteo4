

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: spacerItem
    RowLayout {
        id: recentsTextLayout
        anchors.fill: parent
        anchors.leftMargin: 16
        anchors.rightMargin: 16
        anchors.topMargin: 128
        anchors.bottomMargin: 16
        Label {
            id: labelRecents
            color: "#ffffff"
            text: qsTr("Recently Searched")
            verticalAlignment: Text.AlignBottom
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            Layout.preferredHeight: -1
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pointSize: 16
            fontSizeMode: Text.Fit
        }
        Label {
            id: recentsToolButton
            color: "#ffffff"
            text: "See All >"
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignBottom
            font.pointSize: 16
            Layout.fillHeight: true
            Layout.fillWidth: true
            MouseArea {
                anchors.fill: recentsToolButton
            }
        }
    }
}
