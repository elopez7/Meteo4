
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

ColumnLayout {
    id: root
    width: ListView.view.width / 7
    height: ListView.view.height
    Label {
        color: "#ffffff"
        text: day
        horizontalAlignment: Text.AlignHCenter
        Layout.fillWidth: true
        Layout.preferredHeight: 2
        Layout.fillHeight: true
        font.pointSize: 16
        font.bold: true
    }

    Image {
        source: "../images/icons/03n.png"
        Layout.alignment: Qt.AlignVCenter
        Layout.fillWidth: true
        Layout.preferredHeight: 2
        Layout.fillHeight: true
        sourceSize.height: 128
        sourceSize.width: 128
        fillMode: Image.PreserveAspectFit
    }

    Label {
        color: "#c0c0c0"
        text: temp + "°"
        horizontalAlignment: Text.AlignHCenter
        Layout.fillWidth: true
        Layout.preferredHeight: 2
        Layout.fillHeight: true
        font.pointSize: 32
        font.bold: true
    }
}
