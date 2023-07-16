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
            Pockemon(name: "이상해씨", number: 1, imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png", types: [.grass, .poison])
        ]
    }
}

func fetchStickers() {
    // UserDefaults의 데이터를 가져오는 국룰 코드
    do {
        // UserDefaults에서 "Stickers"라는 key의 값을 가져오는데
        // 이 value는 어떤 타입인지를 따로 알려주니는 않는다
        // JSON을 인코딩해서 Data 만들어 저장한거니까
        // 우리는 미리 이것이 Data 타입이라고 생각하고
        // 형 변환 (as? Data)과 관련된 if let 옵셔널 바인딩 처리로
        // 올바르게 Data 타입의 data 인스턴스가 잡혔을때만 관련 처리를 진행한다
        if let data = UserDefaults.standard.object(forKey: "Pockemons") as? Data {
            let decoder: JSONDecoder = JSONDecoder()
            pockemons = try decoder.decode([Pockemon].self, from: data)
        }
    } catch {
        print("UserDefaults로 부터 데이터 가져오기 실패")
    }
}

enum PockemonType: String {
    case normal = "노말"
    case fire = "불꽃"
    case water = "물"
    case electric = "전기"
    case grass = "풀"
    case ice = "얼음"
    case fighting = "격투"
    case poison = "독"
    case ground = "땅"
    case flying = "비행"
    case psychic = "에스퍼"
    case bug = "벌레"
    case rock = "바위"
    case ghost = "고스트"
    case dragon = "드래곤"
    case dark = "악"
    case steel = "강철"
    case fairy = "페어리"
    
    var displayString: String {
        switch self {
        case .normal:
            return "⬜️노말"
        case .fire:
            return "🔥불꽃"
        case .water:
            return "💧물"
        case .electric:
            return "⚡️전기"
        case .grass:
            return "🍃풀"
        case .ice:
            return "❄️얼음"
        case .fighting:
            return "🥊격투"
        case .poison:
            return "🧪독"
        case .ground:
            return "🕳️땅"
        case .flying:
            return "✈️비행"
        case .psychic:
            return "🔮에스퍼"
        case .bug:
            return "🕷️벌레"
        case .rock:
            return "🪨바위"
        case .ghost:
            return "👻고스트"
        case .dragon:
            return "🐉드래곤"
        case .dark:
            return "👿악"
        case .steel:
            return "⛓️강철"
        case .fairy:
            return "🧝‍♀️페어리"
        }
    }
}
