//
//  ContentView.swift
//  NavigationDrawerTutorial
//
//  Created by Duy Bui on 10/25/19.
//  Copyright © 2019 Duy Bui. All rights reserved.
//

import SwiftUI

struct DrawerContent: View {
    var body: some View {
        Color.blue
    }
}

struct NavigationDrawer: View {
    private let width = UIScreen.main.bounds.width - 100
    @Binding var isOpen: Bool
    
    var body: some View {
        HStack {
            DrawerContent()
                .frame(width: self.width)
                .offset(x: self.isOpen ? 0 : -self.width)
                .animation(.default)
            Spacer()
        }.onTapGesture {
            self.isOpen.toggle()
        }
    }
}

struct ContentView: View {
    @State var isDrawerOpen: Bool = false
    
    var body: some View {
        ZStack {
            NavigationView {
                EmptyView()
                    .navigationBarTitle(Text("Navigation Drawer"))
                    .navigationBarItems(leading: Button(action: {
                        self.isDrawerOpen.toggle()
                    }) {
                        Image(systemName: "sidebar.left")
                    })
            }
            
            NavigationDrawer(isOpen: self.$isDrawerOpen)
        }
    }
}
