//
//  InfoView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationStack {
            Text("제작: 장여훈")
            Divider()
            
            Text(" 2023년 8월 1일 화요일")
            
                .navigationTitle("Information")
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
