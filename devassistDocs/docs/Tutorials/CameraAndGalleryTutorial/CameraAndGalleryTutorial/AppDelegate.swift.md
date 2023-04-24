## AppDelegate.swift

### Overview
This file is the AppDelegate file for the CameraAndGalleryTutorial application. It is responsible for managing the initialization of the application and the application's lifecycle. 

### Props
None

### Variables
None

### Methods
#### application(_:didFinishLaunchingWithOptions:)
This method is called when the application has finished launching. It is responsible for performing any post-launch operations and returning a boolean value indicating whether or not the launch was successful. 

#### application(_:configurationForConnecting:options:)
This method is responsible for selecting the configuration to create a new scene with when a new scene session is being created. 

#### application(_:didDiscardSceneSessions:)
This method is called when the user discards a scene session. It is responsible for releasing any resources that were specific to the discarded scenes. 

### Usage
The AppDelegate file should not be modified unless absolutely necessary. It is responsible for managing the initialization of the application and the application's lifecycle.