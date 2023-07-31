//
//  CountListDetailView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import SwiftUI

struct CountListDetailView: View {
    
    var countStore: CountStore
    var number: Count
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(number.number)")
                    .font(.title)
                    .padding()
                
                Text("\(number.dateString)")
                    .font(.footnote)
                    .padding()
            }
            Spacer()
        }
        .background(.blue)
        .shadow(radius: 6)
        .padding()
    }
}

struct CountListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CountListDetailView(countStore: CountStore(), number: Count(number: 10, date: Date()))
    }
}
