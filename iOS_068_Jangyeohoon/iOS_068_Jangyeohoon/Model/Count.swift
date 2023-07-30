//
//  Count.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import Foundation
import SwiftUI

struct Count: Codable {
    var id: UUID = UUID()
    var number: Int
    var date: Date
    
    var dateString: String {
        let dateFormatter: DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd EEEE HH:mm:ss"
        
        return dateFormatter.string(from: date)
    }
}
