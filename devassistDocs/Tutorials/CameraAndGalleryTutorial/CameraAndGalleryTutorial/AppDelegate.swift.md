# AppDelegate.swift
## Overview
The AppDelegate.swift file is a class in Swift that is responsible for managing the app's life cycle. It is usually the first file that gets called when the app launches and handles app-level customizations and other tasks that need to be completed before the app is ready to use.

## Props
* `UIApplicationMain`: This is a class attribute that indicates that this class is the main application delegate class. It must be declared in order for the app to launch.

## Variables
None

## Methods
* `application(_:didFinishLaunchingWithOptions:)`: This method is called when the app has finished launching. This is where app-level customization should be done.
* `application(_:configurationForConnecting:options:)`: This method is called when a new scene is being created. It is responsible for selecting a configuration for the new scene.
* `application(_:didDiscardSceneSessions:)`: This method is called when the user discards a scene session. It is responsible for releasing any resources associated with the discarded scenes.

## Usage
The AppDelegate.swift file is used to manage the app's life cycle. It is the first file that is called when the app launches and is responsible for managing tasks such as app-level customizations and scene creation.