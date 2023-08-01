//
//  iOS_068_JangyeohoonApp.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/29.
//

import SwiftUI

@main
struct iOS_068_JangyeohoonApp: App {
    
    let countStore: CountStore = CountStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView(number: 0)
                .environmentObject(countStore)
        }
    }
}
