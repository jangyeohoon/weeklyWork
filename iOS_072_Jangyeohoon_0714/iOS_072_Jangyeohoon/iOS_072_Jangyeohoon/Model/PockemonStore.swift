//
//  PockemonType.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/16.
//

import Foundation
import SwiftUI

class PockemonStore: ObservableObject {
    @Published var pockemons: [Pockemon] = []
    
    init() {
        pockemons = [
            
        ]
    }
    
    func addPockemon(name: String, imagePath: String) {
        var pockemon = Pockemon(name: name, imagePath: imagePath)
        pockemon.imagePath = imagePath
        
        pockemons.insert(pockemon, at: 0)
        
    }
    
    func fetchStickers() {
        do {
            if let data = UserDefaults.standard.object(forKey: "Pockemons") as? Data {
                let decoder: JSONDecoder = JSONDecoder()
                pockemons = try decoder.decode([Pockemon].self, from: data)
            }
        } catch {
            print("UserDefaults로 부터 데이터 가져오기 실패")
        }
    }
}
