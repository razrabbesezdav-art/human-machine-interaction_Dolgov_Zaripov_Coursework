# human-machine-interaction_Dolgov_Zaripov_Coursework

Этап 1. Создание рабочей среды
Шаг 1. Создание репозитория на гитхаб и клонирование его на компьютер.
![[Pasted image 20261126212938.png]]

Шаг 2. Создание QT Quick Application проекта в QTСreater
![[Pasted image 20261126213302.png]]

Шаг 3. Написание в проекте qml файл, выводящего при запуске проекта окно с зацикленными тематически подходящими видеороликами для демонстрации работы с библиотекой QtMultimedia.
```
Main.gml

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

```

```
main.cpp

#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    qputenv("QT_MEDIA_BACKEND", "windows");
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("VideoApp", "Main");

    return QGuiApplication::exec();
}

```

![[Pasted image 20261126214349.png]]

Шаг 4. Коммит и пуш всей проделанной работы.