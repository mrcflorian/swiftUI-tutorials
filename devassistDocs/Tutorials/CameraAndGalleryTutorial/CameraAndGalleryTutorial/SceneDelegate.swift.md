# SceneDelegate

## Overview
This `SceneDelegate` class is a subclass of `UIResponder` and `UIWindowSceneDelegate` which is used to set the root view controller of the window when the scene is connected. 

## Props
- `window`: A `UIWindow` object that is used to set the root view controller.

## Variables
None

## Methods
- `scene(_:willConnectTo:options:)`: This method is used to optionally configure the window when the scene is connected. The `ContentView` is set as the root view controller.
- `sceneDidDisconnect(_:)`: This method is called when the scene is released by the system.
- `sceneDidBecomeActive(_:)`: This method is called when the scene has moved from an inactive state to an active state.
- `sceneWillResignActive(_:)`: This method is called when the scene will move from an active state to an inactive state.
- `sceneWillEnterForeground(_:)`: This method is called as the scene transitions from the background to the foreground.
- `sceneDidEnterBackground(_:)`: This method is called as the scene transitions from the foreground to the background.

## Usage
The `SceneDelegate` class is used to set the root view controller of the window when the scene is connected. It also handles the state changes of the scene and performs certain tasks when the state changes.