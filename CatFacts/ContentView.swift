//
//  ContentView.swift
//  CatFacts
//
//  Created by Ritesh Sathiyamoorthi on 4/9/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CatFactView()
                .tabItem {
                    Label("Facts", systemImage: "lightbulb")
                }
            
            CatImageView()
                .tabItem {
                    Label("Image", systemImage: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
