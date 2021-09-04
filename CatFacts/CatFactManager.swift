//
//  CatFactManager.swift
//  CatFacts
//
//  Created by Ritesh Sathiyamoorthi on 4/9/21.
//

import Foundation

class CatFactManager : ObservableObject {
    
    @Published var fact : CatFact?
    
    func GetCatFact() {
        let apiURl = URL(string:"https://catfact.ninja/fact")!
        let request = URLRequest(url : apiURl)
        
        fact = nil
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                print(String(data: data, encoding: .utf8)!)
                let decoder = JSONDecoder()
                DispatchQueue.main.sync {
                    self.fact = try? decoder.decode(CatFact.self, from: data)
                }
            }
        }
        .resume()
    }
}
