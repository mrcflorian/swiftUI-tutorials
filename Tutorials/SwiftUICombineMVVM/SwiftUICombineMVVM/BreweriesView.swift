//
//  BreweriesView.swift
//  SwiftUICombineMVVM
//
//  Created by Duy Bui on 7/30/20.
//  Copyright © 2020 iOS App Templates. All rights reserved.
//

import SwiftUI

struct BreweriesView: View {
    @ObservedObject var viewModel = BreweriesViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.breweries, id: \.self) {
                BreweryView(brewery: $0)
            }.navigationBarTitle("Breweries")
                .onAppear {
                    self.viewModel.fetchBreweries()
            }
        }
    }
}
