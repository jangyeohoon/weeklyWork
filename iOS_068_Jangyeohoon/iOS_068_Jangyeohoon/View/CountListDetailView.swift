//
//  CountListDetailView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import SwiftUI

struct CountListDetailView: View {
    
    @EnvironmentObject var countStore: CountStore
    var number: Count
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(number.number)")
                    .font(.title)
                
                Text("\(number.dateString)")
                    .font(.footnote)
            }
        }
    }
}

struct CountListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountListDetailView(number: Count(number: 0, date: Date()))
    }
}
