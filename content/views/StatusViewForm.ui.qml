

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
    property alias detailName: detailName.text
    property alias detailData: detailData.text
    property alias detailPicture: detailPicture.source
    property alias detailExtra: detailExtra.text

    color: "#b3262626"
    radius: 45

    ColumnLayout {
        anchors.fill: parent
        anchors.leftMargin: 32
        anchors.rightMargin: 32
        anchors.topMargin: 16
        anchors.bottomMargin: 16
        Label {
            id: detailName
            color: "#ffffff"
            text: "Wind"
            font.pointSize: 16
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: detailData
            color: "#ffffff"
            text: "13 kh/h E"
            font.pointSize: 16
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Image {
            id: detailPicture
            source: "../images/icons/13.png"
            fillMode: Image.PreserveAspectFit
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label {
            id: detailExtra
            color: "#ffffff"
            text: "Gust: 20 Km/h"
            font.pointSize: 16
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
