//
//  Count.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import Foundation
import SwiftUI

class CountStore: ObservableObject {
    
    // @Published 속성 래퍼를 사용하여 countData 배열을 관찰 가능한 속성으로 만든다, 변경 발생시 알림 생성
    @Published var countData: [Count] = []
    @Published var number: Int = 0
    
    init() {
        countData = []
    }
    
    func reset() {
        countData.removeAll()
        saveCounts()
    }
    
    func countingData() {
        let count = Count(number: number, date: Date())
        countData.insert(count, at: 0)
        saveCounts()
    }
    
    func deleteItem(at offsets: IndexSet) {
        print("\(offsets)를 삭제하려합니다.")
    }
    
    func fetchCounts() {
        do {
            if let data = UserDefaults.standard.object(forKey: "Counts") as? Data {
                let decoder: JSONDecoder = JSONDecoder()
                countData = try decoder.decode([Count].self, from: data)
            }
        } catch {
            print("UserDefaults로 부터 데이터 가져오기 실패")
        }
    }
    
    func saveCounts() {
        // JSON으로 배열 등등의 복잡 데이터를 단일한 데이터로 만들어준다
        // 앞으로도 이런거 있으면 이 코드 복붙하자!
        do {
            let endcoder: JSONEncoder = JSONEncoder()
            let data: Data = try endcoder.encode(countData)
            
            // 지금은 UserDefaults에 저장하지만,
            // 나중엔 이 부분이 외부의 클라우드 등등에 접속하는 코드로
            // 다양하게 바뀔 수 있다
            UserDefaults.standard.set(data, forKey: "Counts")
        } catch {
            print("JSON 생성 후 UserDefaults 실패")
        }
    }
}
