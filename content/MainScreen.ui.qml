

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtPositioning
import QtLocation
import Meteo4

import "views"
import "models"

Item{
    id: root
    Image {
        id: background
        anchors.fill: root
        source: "images/backgrounds/02n.png"

        Plugin {
            id: mapPlugin
            name: "osm"
        }

        GridLayout {
            id: contentLayout
            anchors.fill: parent
            anchors.leftMargin: 64
            anchors.rightMargin: 64
            anchors.topMargin: 64
            anchors.bottomMargin: 64
            columnSpacing: 64
            rows: 5
            columns: 3

            DetailsPanel {
                id: detailsPanel
                Layout.preferredWidth: 6
                Layout.rowSpan: 5
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Label {
                id: labelLocation
                color: "#ffffff"
                text: qsTr("London, Ontario, Canada (Tuesday, April 9)")
                verticalAlignment: Text.AlignVCenter
                Layout.preferredHeight: 2
                Layout.preferredWidth: 8
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
                font.pointSize: 32
            }

            Item {
                Layout.preferredHeight: 2
                Layout.preferredWidth: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Button {
                    id: searchButton
                    anchors.fill: parent
                    anchors.leftMargin: 443
                    anchors.bottomMargin: 130
                    icon.color: "#ffffff"
                    icon.height: 128
                    icon.width: 128
                    icon.source: "images/icons/search.png"
                    display: AbstractButton.IconOnly
                    background: Rectangle {
                        color: "#00ffffff"
                    }
                }
            }

            CurrentTemperatureView {
                Layout.preferredHeight: 2
                Layout.preferredWidth: 4
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 1
            }

            SeeAllView {
                Layout.preferredHeight: 2
                Layout.preferredWidth: 4
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Label {
                id: labelWeather
                color: "#80c0c0c0"
                text: qsTr("Stormy\nwith partly cloudy")
                verticalAlignment: Text.AlignVCenter
                Layout.preferredHeight: 2
                Layout.preferredWidth: 8
                Layout.fillHeight: true
                Layout.fillWidth: true
                font.pointSize: 64
                fontSizeMode: Text.Fit
            }

            RecentsView {
                id: recentsView
                Layout.preferredHeight: 2
                Layout.preferredWidth: 6
                Layout.fillHeight: true
                Layout.fillWidth: true
                recentsModel: recentsViewModel
            }

            Item {
                id: spacerItem2
                Layout.preferredHeight: 2
                Layout.preferredWidth: 8
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            WeekDaysView {
                id: weekDaysView
                Layout.preferredHeight: 2
                Layout.preferredWidth: 8
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 2
            }
        }
        RecentsViewModel {
            id: recentsViewModel
        }
    }
}
