

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
        id: detailsLayout
        anchors.fill: parent
        anchors.leftMargin: 32
        anchors.rightMargin: 32
        anchors.topMargin: 32
        anchors.bottomMargin: 32

        Label {
            id: applicationTitleLabel
            color: "#ffffff"
            text: qsTr("Meteo 4")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.fillHeight: true
            Layout.preferredHeight: 3
            font.underline: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.pointSize: 32
        }

        Label {
            id: statusLabel
            text: qsTr("Status")
            Layout.fillHeight: true
            Layout.preferredHeight: 2
            font.pointSize: 24
        }

        StatusView {
            id: statusView
            Layout.preferredHeight: 10
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Label {
            id: moreDetailsLabel
            color: "#ffffff"
            text: qsTr("See More Details >")
            Layout.fillHeight: true
            Layout.preferredHeight: 2
            font.pointSize: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            MouseArea {
                id: moreDetailMouseArea
                anchors.fill: parent
            }
        }

        Item {
            Layout.fillHeight: true
            Layout.preferredHeight: 3
        }

        Label {
            id: areaLabel
            text: qsTr("Select Area")
            Layout.fillHeight: true
            Layout.preferredHeight: 2
            font.pointSize: 24
        }

        MapView {
            id: mapView
            Layout.preferredHeight: 10
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }

        Item {
            Layout.fillHeight: true
            Layout.preferredHeight: 2
        }

        LocationNameView {
            id: locationNameView
            Layout.preferredHeight: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        }
    }
}
