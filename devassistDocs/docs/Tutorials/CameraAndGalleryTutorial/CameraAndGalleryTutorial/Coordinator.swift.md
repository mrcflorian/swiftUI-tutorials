# Coordinator.swift

## Overview
This class is responsible for controlling the UIImagePickerController and binding the `isCoordinatorShown` and `imageInCoordinator` variables. 

## Props

- `isCoordinatorShown`: A boolean variable to determine if the coordinator is shown.
- `imageInCoordinator`: A Image variable that holds the image that is picked from the image picker.

## Variables

- `picker`: A UIImagePickerController variable that is used to pick an image.

## Methods

- `imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])`: This method is triggered when the user has picked an image from the image picker. It takes in a UIImagePickerController and a dictionary containing info about the image. It unwraps the image and sets it to the `imageInCoordinator` variable and sets `isCoordinatorShown` to false.

- `imagePickerControllerDidCancel(_ picker: UIImagePickerController)`: This method is triggered when the user cancels the image picker. It sets `isCoordinatorShown` to false.

## Usage

To use this class, create a Coordinator object with the `isCoordinatorShown` and `imageInCoordinator` variables. Then, set the `delegate` of the picker to the coordinator. Finally, present the picker.