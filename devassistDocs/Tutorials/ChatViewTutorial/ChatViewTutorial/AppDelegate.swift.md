# AppDelegate.swift

## Overview
This AppDelegate.swift file contains the code for the app's main delegate. This includes the functions used to launch the app when it is opened, as well as functions that manage the lifecycle of the app's scenes. 

## Props
No props are used in this file.

## Variables
No variables are used in this file.

## Methods

#### application(_:didFinishLaunchingWithOptions:) 
This method is called when the app launches. It is used for any customization that needs to be done after the app is launched.

#### application(_:configurationForConnecting:options:)
This method is called when a new scene session is being created. It is used to select a configuration to create the new scene with.

#### application(_:didDiscardSceneSessions:)
This method is called when the user discards a scene session. It is used to release any resources that were specific to the discarded scenes. 

## Usage
The AppDelegate.swift file should not be modified manually. All modifications should be done through the project's settings.