# SceneDelegate.swift

## Overview
This class handles the initialization of the rootViewController of the scene. It is also responsible for managing the lifecycle of the app when it enters the background and foreground. 

## Props
```swift 
var window: UIWindow?
```

## Variables
None

## Methods 
```swift
scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
```
This method is called when the scene is about to be connected to a session. It is used to configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.

```swift
sceneDidDisconnect(_ scene: UIScene)
```
This method is called when the scene is being released by the system. It is used to release any resources associated with the scene that can be re-created the next time the scene connects.

```swift
sceneDidBecomeActive(_ scene: UIScene)
```
This method is called when the scene has moved from an inactive state to an active state. It is used to restart any tasks that were paused (or not yet started) when the scene was inactive.

```swift
sceneWillResignActive(_ scene: UIScene)
```
This method is called when the scene will move from an active state to an inactive state. It is used to save data and release shared resources.

```swift
sceneWillEnterForeground(_ scene: UIScene)
```
This method is called as the scene transitions from the background to the foreground. It is used to undo the changes made on entering the background.

```swift
sceneDidEnterBackground(_ scene: UIScene)
```
This method is called as the scene transitions from the foreground to the background. It is used to save data, release shared resources, and store enough scene-specific state information to restore the scene back to its current state.

## Usage
The SceneDelegate class is used to manage the lifecycle of the app when it is being connected to a session, entering the background and foreground, and disconnecting from a session. It is also used to configure and attach the UIWindow to the scene.