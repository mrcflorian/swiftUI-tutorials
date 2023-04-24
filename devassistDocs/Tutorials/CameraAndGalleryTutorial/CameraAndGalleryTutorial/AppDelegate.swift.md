# AppDelegate

## Overview
AppDelegate is a class that handles the application's life cycle events. It is a subclass of `UIResponder` and conforms to the `UIApplicationDelegate` protocol. 

## Props
None 

## Variables
None

## Methods 

### application(_:didFinishLaunchingWithOptions:)
This method is called when the application has finished launching. This is a great place to do any initial setup. 

### application(_:configurationForConnecting:options:)
This method is called when a new scene session is being created. Use this method to select a configuration to create the new scene with.

### application(_:didDiscardSceneSessions:)
This method is called when the user discards a scene session. Use this method to release any resources that were specific to the discarded scenes. 

## Usage
The AppDelegate should not be used directly, but is used by the system to handle application life cycle events.