

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: root

    color: "#c8555555"
    radius: 50
    border.color: "#c0c0c0"
    border.width: 4

    ColumnLayout {
        anchors.fill: parent
        anchors.margins: 16

        RowLayout {
            id: weatherWidget
            Layout.preferredHeight: 6
            Layout.fillHeight: true
            Layout.fillWidth: true
            Image {
                id: weatherIconId
                source: weatherIcon
                Layout.preferredWidth: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                fillMode: Image.PreserveAspectFit
            }
            Label {
                id: weatherTemperatureId
                color: "#ffffff"
                text: weatherTemperature + "°"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 32
                Layout.preferredWidth: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                fontSizeMode: Text.FixedSize
            }
        }
        Label {
            id: locationId
            color: "#ffffff"
            text: location
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pointSize: 16
        }
        Label {
            id: weatherDescriptionId
            color: "#80c0c0c0"
            text: weatherDescription
            Layout.preferredHeight: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            font.pointSize: 16
        }
    }
}
