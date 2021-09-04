//
//  CatFactView.swift
//  CatFacts
//
//  Created by Ritesh Sathiyamoorthi on 4/9/21.
//

import SwiftUI

struct CatFactView: View {
    
    @ObservedObject var catFactManager = CatFactManager()

    
    var body: some View {
        VStack {
            if let fact = catFactManager.fact {
                Text(fact.fact)
                    .padding()
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .onAppear() {
            catFactManager.GetCatFact()
        }
    }
}

struct CatFactView_Previews: PreviewProvider {
    static var previews: some View {
        CatFactView()
    }
}
