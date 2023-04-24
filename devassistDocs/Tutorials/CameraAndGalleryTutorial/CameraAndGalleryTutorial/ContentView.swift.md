# ContentView

## Overview
ContentView is a SwiftUI View that allows users to pick an image from their camera or photo gallery. It contains a Button to trigger the image picker, an Image View to display the selected image, and a CaptureImageView to handle the image picker.

## Props
- `image`: An Image type that is used to display the selected image.
- `showCaptureImageView`: A boolean to indicate whether the image picker should be shown.

## Variables
None

## Methods
None

## Usage
To use the ContentView, simply add it to your view hierarchy and bind the `image` and `showCaptureImageView` props to your view controller. The image picker will be triggered when the button is pressed and the `image` will be updated with the selected image.