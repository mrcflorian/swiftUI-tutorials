# Coordinator

## Overview
The Coordinator class is a SwiftUI class used to implement the UIImagePickerControllerDelegate and UINavigationControllerDelegate protocols. This class is used to provide a way to select an image from the device's photo library or camera. 

## Props
| Prop | Description |
| ---- | ----------- |
| isCoordinatorShown | A binding boolean value that is used to determine if the coordinator is shown or not. |
| imageInCoordinator | A binding image value that is used to store the image that is selected from the device's photo library or camera. |

## Variables
None

## Methods
| Method | Description |
| ------ | ----------- |
| imagePickerController(_:didFinishPickingMediaWithInfo:) | This method is used to assign the selected image to the imageInCoordinator binding and set isCoordinatorShown to false when an image is selected. |
| imagePickerControllerDidCancel(_:) | This method is used to set isCoordinatorShown to false when the user cancels the selection. |

## Usage
The Coordinator class is used to select an image from the device's photo library or camera. To use this class, create an instance of Coordinator and pass in the binding value of isCoordinatorShown and imageInCoordinator. Then call the instance of Coordinator in the body of a view and assign the instance to the imagePickerController property of an instance of UIImagePickerController.