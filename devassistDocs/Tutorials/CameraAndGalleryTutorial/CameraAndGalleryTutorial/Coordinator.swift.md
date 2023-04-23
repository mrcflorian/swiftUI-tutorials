# Coordinator

## Overview
The Coordinator class is used to handle the picker view of UIImagePickerController when the user is selecting an image from the camera or photo library.

## Props
- `isCoordinatorShown`: A binding variable to indicate if the picker view is shown.
- `imageInCoordinator`: A binding variable to store the selected image.

## Variables
- `picker`: A UIImagePickerController object to display the picker view.

## Methods
- `imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])`: This method is called when the user has finished selecting an image. It unwraps the image from the info dictionary and stores it in the `imageInCoordinator` variable. It also sets `isCoordinatorShown` to false to hide the picker view.

- `imagePickerControllerDidCancel(_ picker: UIImagePickerController)`: This method is called when the user has cancelled the selection. It sets `isCoordinatorShown` to false to hide the picker view.

## Usage
The Coordinator class is used in the ContentView class of the CameraAndGalleryTutorial project. An instance of Coordinator is created and passed to the sheet view as a coordinator. The sheet view is then shown when the user taps on the camera or photo library buttons. When the user has finished selecting an image or cancelled the selection, the Coordinator's methods are called.