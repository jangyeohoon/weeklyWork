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
    var number: Int
    var imagePath: String
    var types: [PockemonType]
    var numberString: String { "No.\(number)" }
    var pockemonIndex: Int = 0

}
