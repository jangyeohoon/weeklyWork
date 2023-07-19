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
    
    func savePockemons() {
        // JSON으로 배열 등등의 복잡 데이터를 단일한 데이터로 만들어준다
        // 앞으로도 이런거 있으면 이 코드 복붙하자!
        do {
            let endcoder: JSONEncoder = JSONEncoder()
            let data: Data = try endcoder.encode(pockemons)
            
            // 지금은 UserDefaults에 저장하지만,
            // 나중엔 이 부분이 외부의 클라우드 등등에 접속하는 코드로
            // 다양하게 바뀔 수 있다
            UserDefaults.standard.set(data, forKey: "Pockemons")
        } catch {
            print("JSON 생성 후 UserDefaults 실패")
        }
    }
    
    func addPockemon(name: String, imagePath: String) {
        var pockemon = Pockemon(name: name, imagePath: imagePath)
        pockemon.imagePath = imagePath
        
        pockemons.insert(pockemon, at: 0)
        savePockemons()
    }
    
    func fetchPockemon() {
        do {
            if let data = UserDefaults.standard.object(forKey: "Pockemons") as? Data {
                let decoder: JSONDecoder = JSONDecoder()
                pockemons = try decoder.decode([Pockemon].self, from: data)
            }
        } catch {
            print("UserDefaults로 부터 데이터 가져오기 실패")
        }
    }
    
    func updatePockemon(_ pockemon: Pockemon) {
        var index: Int = 0
        for tempSticker in pockemons {
            if tempSticker.id == pockemon.id {
                pockemons.remove(at: index)
                pockemons.insert(pockemon, at:0)
                savePockemons()
                break
            }
            index += 1
        }
    }
}
