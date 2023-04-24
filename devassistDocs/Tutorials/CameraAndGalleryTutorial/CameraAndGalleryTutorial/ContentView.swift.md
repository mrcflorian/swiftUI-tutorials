# ContentView

## Overview
ContentView is a SwiftUI view that allows users to select an image from their device's photo library or take a photo with the device's camera. The view is composed of a button that, when pressed, presents a CaptureImageView which handles the photo selection. 

## Props
- `image`: Image? - The image that the user has selected from their photo library or taken with their device's camera
- `showCaptureImageView`: Bool - Whether or not the CaptureImageView should be visible

## Variables
None

## Methods
None

## Usage
ContentView can be used in any SwiftUI view as a way to allow users to select or take a photo. To do this, simply add ContentView as a subview in the desired view.