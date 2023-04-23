# AppDelegate

## Overview 
AppDelegate.swift is a class that is responsible for managing the application's life cycle. It works in conjunction with the application object and the scene delegate to ensure the app runs smoothly. 

## Props
None

## Variables
None

## Methods

`application(_:didFinishLaunchingWithOptions:)` - This method is called when the application launches and is used to customize the app after launch. 

`application(_:configurationForConnecting:options:)` - This method is called when a new scene session is being created and is used to select a configuration to create the new scene with. 

`application(_:didDiscardSceneSessions:)` - This method is called when the user discards a scene session. It is used to release resources that were specific to the discarded scenes. 

## Usage
The AppDelegate class should not be used directly. It is called automatically when the app is launched and should not be modified.