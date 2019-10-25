//
//  ContentView.swift
//  TabbedViewTutorial
//
//  Created by Duy Bui on 10/25/19.
//  Copyright © 2019 Duy Bui. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
           RedView()
             .tabItem {
                Image(systemName: "phone.fill")
                Text("First Tab")
              }

           BlueView()
             .tabItem {
                Image(systemName: "tv.fill")
                Text("Second Tab")
              }
        }
    }
}

struct RedView: View {
    var body: some View {
        Color.red
    }
}

struct BlueView: View {
    var body: some View {
        Color.blue
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
