import QtQuick

import "../models"
import "../delegates"

ListView {
    id: listView
    interactive: false
    orientation: ListView.Horizontal
    model: WeekDaysViewModel {}
    delegate: WeekDaysViewDelegate {}
}
