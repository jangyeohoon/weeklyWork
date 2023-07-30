//
//  CountListDetailView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import SwiftUI

struct CountListDetailView: View {
    
//    let count: Count
//    var CountStore: CountStore
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("123")
                    .font(.title)
                    .padding()
                
                Text("234")
                    .font(.footnote)
                    .padding()
            }
            Spacer()
        }
    }
}

struct CountListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountListDetailView()
    }
}
