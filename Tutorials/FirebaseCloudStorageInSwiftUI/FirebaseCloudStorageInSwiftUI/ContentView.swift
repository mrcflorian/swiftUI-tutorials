//
//  ContentView.swift
//  FirebaseCloudStorageInSwiftUI
//
//  Created by Duy Bui on 8/13/20.
//  Copyright © 2020 iOS App Templates. All rights reserved.
//

import SwiftUI
import FirebaseStorage

struct ContentView: View {
    @State var isShown = false
    
    var body: some View {
        Button(action: { self.isShown.toggle() }) {
            Text("Upload Image")
        }.sheet(isPresented: $isShown) {
            ImagePickerView(isShown: self.$isShown)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ImagePickerView: UIViewControllerRepresentable {
    
    @Binding var isShown: Bool
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePickerView>) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        imagePicker.sourceType = .photoLibrary
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePickerView>) {}
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(imagePicker: self)
    }
}

extension ImagePickerView {
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var imagePicker: ImagePickerView
        init(imagePicker: ImagePickerView) {
            self.imagePicker = imagePicker
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            imagePicker.isShown.toggle()
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            guard let image = info[.originalImage] as? UIImage,
                let data = image.jpegData(compressionQuality: 0.4) else { return }
            let storage = Storage.storage()
            storage.reference().child("temp").putData(data, metadata: nil) { (_, error) in
                if error != nil {
                    print(error?.localizedDescription)
                    return
                }
                print("Uploaded Successfully")
            }
        }
    }
}
