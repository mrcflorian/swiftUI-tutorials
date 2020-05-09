//
//  ContentView.swift
//  TheHorizontalProgressBarView
//
//  Created by iOS App Templates on 5/9/20.
//  Copyright © 2020 iOS App Templates. All rights reserved.
//

import SwiftUI

struct HorizontalProgressBarView: View {
    @Binding var currentProgressValue: CGFloat
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .fill(Color.gray)
            Rectangle()
                .fill(Color.purple)
                .frame(width: min(width, currentProgressValue*width))
        }.cornerRadius(30.0)
            .frame(width: width, height: height)
    }
}

struct ContentView: View {
    @State var currentProgressValue: CGFloat = 0.0
    
    var body: some View {
        HorizontalProgressBarView(currentProgressValue: $currentProgressValue,
                        width: 300,
                        height: 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
