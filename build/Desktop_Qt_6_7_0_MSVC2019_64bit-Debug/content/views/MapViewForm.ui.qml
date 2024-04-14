

/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick
import QtQuick.Controls
import QtPositioning
import QtLocation
import "../models"
import "../delegates"

Rectangle {
    id: root
    color: "#00000000"
    radius: 16
    border.color: "#262626"
    border.width: 4
    MapView {
        id: mapView
        anchors.fill: parent
        anchors.leftMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 5
        anchors.bottomMargin: 5
        z: -1
        map.plugin: mapPlugin
        map.center {
            latitude: 42.98263
            longitude: -81.25144
        }
        map.zoomLevel: 14

        PointsListModel {
            id: pointsModel
        }

        MouseArea {
            id: mapMouseArea
            anchors.fill: mapView
        }

        Connections {
            target: mapMouseArea
            function onClicked(mouse) {
                           let point = Qt.point(mouse.x, mouse.y)
                           let coord = mapView.map.toCoordinate(point)
                           pointsModel.append({
                                                  "latitude": coord.latitude,
                                                  "longitude": coord.longitude
                                              })
                           let marker = Qt.createQmlObject(
                               "import '../delegates'; LocationPinDelegate {}",
                               root)
                           mapView.map.addMapItem(marker)
                           marker.coordinate.latitude = coord.latitude
                           marker.coordinate.longitude = coord.longitude
                       }
        }
    }
}
