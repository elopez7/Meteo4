

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
    id: highLow
    width: 281
    height: 151
    Layout.bottomMargin: 32
    Layout.topMargin: 32
    Layout.fillHeight: true
    Layout.fillWidth: true

    ColumnLayout {
        id: highLowLayout
        anchors.fill: parent
        spacing: 20
        Rectangle {
            id: highRectangle
            color: "#c8555555"
            radius: 61
            border.color: "#c0c0c0"
            border.width: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
            RowLayout {
                id: highLabels
                anchors.fill: parent

                Text {
                    id: hLabel
                    color: "#c0c0c0"
                    text: qsTr("H")
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 4
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Text {
                    id: highTempLabel
                    text: qsTr("29°")
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 8
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }
        Rectangle {
            id: lowRectangle
            color: "#c8555555"
            radius: 61
            border.color: "#c0c0c0"
            border.width: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
            RowLayout {
                id: lowLabels
                anchors.fill: parent

                Text {
                    id: lLabel
                    color: "#c0c0c0"
                    text: qsTr("L")
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 4
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }

                Text {
                    id: lowTempLabel
                    text: qsTr("12°")
                    font.pixelSize: 50
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    fontSizeMode: Text.Fit
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 8
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                }
            }
        }
    }
}
