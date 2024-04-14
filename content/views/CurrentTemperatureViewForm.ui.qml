

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

RowLayout {
    id: temperatureLayout
    Layout.preferredHeight: 2
    Layout.preferredWidth: 4
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.columnSpan: 1
    spacing: 32

    Label {
        id: currentTemp
        color: "#ffffff"
        text: qsTr("18°")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        Layout.fillHeight: true
        Layout.fillWidth: true
        font.pointSize: 128
    }

    HighLowView {
        Layout.bottomMargin: 32
        Layout.topMargin: 32
        Layout.fillHeight: true
        Layout.fillWidth: true
    }
}
