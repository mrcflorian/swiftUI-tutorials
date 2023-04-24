# SceneDelegate

## Overview
This class is responsible for setting up the application's window and root view controller. It is part of the UIKit framework and is a delegate of the `UIWindowSceneDelegate` protocol. It is triggered when a scene is connected to a session. A scene is basically a window that contains the app's content.

## Props
- `window`: A UIWindow object that is the window for the app.

## Variables
None

## Methods
- `scene(_:willConnectTo:options:)`: This method is triggered when the scene is connected to a session. It is responsible for setting up the root view controller of the window. It takes in the scene, the scene session, and the connection options as parameters.
- `sceneDidDisconnect(_:)`: This method is triggered when the scene is being released by the system.
- `sceneDidBecomeActive(_:)`: This method is triggered when the scene has moved from an inactive state to an active state.
- `sceneWillResignActive(_:)`: This method is triggered when the scene will move from an active state to an inactive state.
- `sceneWillEnterForeground(_:)`: This method is triggered as the scene transitions from the background to the foreground.
- `sceneDidEnterBackground(_:)`: This method is triggered as the scene transitions from the foreground to the background.

## Usage
The `SceneDelegate` class is used to set up the window and root view controller for the application. It is triggered when a scene is connected to a session and is responsible for setting up the root view controller. The methods in the class are triggered as the scene transitions from different states.