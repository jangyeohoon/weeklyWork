//
//  Count.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import Foundation
import SwiftUI

class CountStore: ObservableObject {
    
    @Published var number: Count
    // @Published 속성 래퍼를 사용하여 countData 배열을 관찰 가능한 속성으로 만든다, 변경 발생시 알림 생성
    @Published var countData: [Count] = []
    
    init() {
        countData = [
        
        ]
        self.number = number
    }
    
    func countingData(number: Int) {
        let number = Count(number: number, date: Date())
        countData.insert(number, at: 0)
    }
}
