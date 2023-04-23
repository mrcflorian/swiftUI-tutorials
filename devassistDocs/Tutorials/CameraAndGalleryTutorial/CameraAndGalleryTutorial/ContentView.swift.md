# CaptureImageView

## Overview
This SwiftUI view allows the user to open the camera or the image gallery to select a photo. The selected image is then displayed in the ContentView. 

## Props
| Property | Type | Description |
| --- | --- | --- |
| isShown | Binding<Bool> | A flag that indicates whether the CaptureImageView is shown | 
| image | Binding<Image> | The image selected by the user |

## Variables
None

## Methods
| Method | Description |
| --- | --- |
| makeCoordinator | Creates a Coordinator object |
| makeUIViewController | Creates a UIImagePickerController object |
| updateUIViewController | Updates the UIImagePickerController object |

## Usage
To use CaptureImageView, the user must first create a new instance of CaptureImageView and pass in the isShown and image props. The user must then add the CaptureImageView to their ZStack in their view. When the user wants to open the camera or the image gallery, they must set the showCaptureImageView flag to true. The image selected by the user will be stored in the image prop.