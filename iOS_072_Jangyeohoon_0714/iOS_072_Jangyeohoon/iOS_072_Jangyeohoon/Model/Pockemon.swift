//
//  Pockemon.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/16.
//

import SwiftUI
import Foundation

struct Pockemon: Codable, Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var imagePath: String
}

let pockemon: [Pockemon] = [
    Pockemon(name: "이상해씨", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png"),
    Pockemon(name: "파이리", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000401.png"),
    Pockemon(name: "뮤", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/015101.png"),
    Pockemon(name: "피카츄", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/002501.png"),
    Pockemon(name: "꼬부기", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000701.png"),
    Pockemon(name: "푸린", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/003901.png"),
    Pockemon(name: "잠만보", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/014301.png"),
    Pockemon(name: "고라파덕", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/005401.png")
]
