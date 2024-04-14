set(MODULE_NAME content)
set(LIB_NAME ${MODULE_NAME}Lib)

qt_add_library(${LIB_NAME} STATIC)

set_target_properties(${LIB_NAME} PROPERTIES AUTOMOC ON)
target_link_libraries(${LIB_NAME} PRIVATE Qt6::Quick)

qt6_add_qml_module(${LIB_NAME}
    URI ${MODULE_NAME}
    VERSION 1.0
    RESOURCE_PREFIX "/"
    QML_FILES
        MainScreen.ui.qml

        delegates/LocationPinDelegate.qml
        delegates/LocationPinDelegateForm.ui.qml
        delegates/RecentViewDelegate.qml
        delegates/RecentViewDelegateForm.ui.qml
        delegates/WeekDaysViewDelegate.ui.qml

        models/PointsListModel.qml
        models/RecentsViewModel.qml
        models/WeekDaysViewModel.qml

        views/CurrentTemperatureView.qml
        views/CurrentTemperatureViewForm.ui.qml
        views/DetailsPanel.qml
        views/DetailsPanelForm.ui.qml
        views/HighLowView.qml
        views/HighLowViewForm.ui.qml
        views/LocationNameView.qml
        views/LocationNameViewForm.ui.qml
        views/MapView.qml
        views/MapViewForm.ui.qml
        views/RecentsView.qml
        views/RecentsViewForm.ui.qml
        views/SeeAllView.qml
        views/SeeAllViewForm.ui.qml
        views/StatusView.qml
        views/StatusViewForm.ui.qml
        views/WeekDaysView.ui.qml

    RESOURCES
        fonts/fonts.txt

        images/backgrounds/01d.png
        images/backgrounds/01n.png
        images/backgrounds/02d.png
        images/backgrounds/02n.png
        images/backgrounds/03d.png
        images/backgrounds/03n.png
        images/backgrounds/04d.png
        images/backgrounds/04n.png
        images/backgrounds/09d.png
        images/backgrounds/09n.png
        images/backgrounds/10d.png
        images/backgrounds/10n.png
        images/backgrounds/11d.png
        images/backgrounds/11n.png

        images/icons/01d.png
        images/icons/01n.png
        images/icons/02d.png
        images/icons/02n.png
        images/icons/03d.png
        images/icons/03n.png
        images/icons/04d.png
        images/icons/04n.png
        images/icons/09d.png
        images/icons/09n.png
        images/icons/10d.png
        images/icons/10n.png
        images/icons/11d.png
        images/icons/11n.png
        images/icons/13.png
        images/icons/Location.png
        images/icons/search.png
)
