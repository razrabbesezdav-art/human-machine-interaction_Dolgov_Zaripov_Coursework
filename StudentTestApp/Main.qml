import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Basic
import QtMultimedia

ApplicationWindow {
    id: window
    width: 640
    height: 480
    minimumWidth: 200
    minimumHeight: 250
    visible: true

    MediaPlayer {
        id: player
        source: "file:///C:/CourseWorkQT/human-machine-interaction_Dolgov_Zaripov_Coursework/StartVid.mp4"
        videoOutput: videoOutput
        autoPlay: true
        loops: -2
    }

    VideoOutput {
        id: videoOutput
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        width: 140
        height: 180
    }

    MediaPlayer {
        id: player2
        source: "file:///C:/CourseWorkQT/human-machine-interaction_Dolgov_Zaripov_Coursework/book.mp4"
        videoOutput: videoOutput2
        autoPlay: true
        loops: -2
    }

    VideoOutput {
        id: videoOutput2
        anchors.right: parent.right
        anchors.top: parent.top
        width: 160
        height: 90
    }
}
