import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../models"
import "../delegates"

RowLayout {
    id: root

    required property RecentsViewModel recentsModel

    Repeater {
        model: recentsModel
        delegate: RecentViewDelegate {
            Layout.rightMargin: 16
            Layout.leftMargin: 16
            Layout.preferredHeight: 1
            Layout.preferredWidth: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
