# Coordinator

## Overview
The Coordinator class is a SwiftUI class that is used to bridge the gap between the UIKit framework and SwiftUI. It is used to get an image from the user's photo library or camera.

## Props
- `isCoordinatorShown`: A binding of type Bool that is used to determine if the Coordinator is shown or not.
- `imageInCoordinator`: A binding of type Image? that is used to store the image that is selected from the user's photo library or camera.

## Variables
None

## Methods
- `imagePickerController(_:didFinishPickingMediaWithInfo:)`: This method is used to get the image from the user's photo library or camera and store it in the `imageInCoordinator` variable.
- `imagePickerControllerDidCancel(_:)`: This method is used to dismiss the Coordinator when the user cancels the selection.

## Usage
To use the Coordinator, it must be initialized with the bindings `isCoordinatorShown` and `imageInCoordinator`, and then it can be used to get the image from the user's photo library or camera.