# Coordinator

## Overview
The Coordinator class is a SwiftUI class that helps with the implementation of a UIImagePickerController. It allows a user to select an image from their device's camera or gallery and then use it in their app. 

## Props
- isCoordinatorShown: A binding to determine if the coordinator should be shown or not.
- imageInCoordinator: A binding to store the image chosen from the camera or gallery.

## Variables
- picker: UIImagePickerController

## Methods
- imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]): This method is used to retrieve the image from the camera or gallery and store it in the imageInCoordinator prop.
- imagePickerControllerDidCancel(_ picker: UIImagePickerController): This method is used to dismiss the coordinator when the user cancels.

## Usage
In order to use the Coordinator class, create an instance of the class and pass in the isCoordinatorShown and imageInCoordinator props. Then, set the picker variable to the UIImagePickerController and present it. When the user selects an image, the imagePickerController method will be called and the image will be stored in the imageInCoordinator prop. When the user cancels, the imagePickerControllerDidCancel method will be called and the coordinator will be dismissed.