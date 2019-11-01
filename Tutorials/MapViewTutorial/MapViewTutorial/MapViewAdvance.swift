//
//  MapViewAdvance.swift
//  MapViewTutorial
//
//  Created by Duy Bui on 11/1/19.
//  Copyright © 2019 iOS App Templates. All rights reserved.
//

import SwiftUI
import MapKit

final class Checkpoint: NSObject, MKAnnotation {
  let title: String?
  let coordinate: CLLocationCoordinate2D
  
  init(title: String?, coordinate: CLLocationCoordinate2D) {
    self.title = title
    self.coordinate = coordinate
  }
}

struct MapViewAdvance: UIViewRepresentable {
  @Binding var checkpoints: [Checkpoint]
  
  func makeUIView(context: Context) -> MKMapView {
    MKMapView()
  }
  
  func updateUIView(_ uiView: MKMapView, context: Context) {
    uiView.addAnnotations(checkpoints)
  }
}

struct ContentViewAdvance: View {
  @State var checkpoints: [Checkpoint] = [
    Checkpoint(title: "Da Nang", coordinate: .init(latitude: 16.047079, longitude: 108.206230)),
    Checkpoint(title: "Ha Noi", coordinate: .init(latitude: 21.027763, longitude: 105.834160))
  ]
  
  var body: some View {
    MapViewAdvance(checkpoints: $checkpoints)
  }
}

struct ContentViewAdvance_Previews: PreviewProvider {
  static var previews: some View {
    ContentViewAdvance()
  }
}
