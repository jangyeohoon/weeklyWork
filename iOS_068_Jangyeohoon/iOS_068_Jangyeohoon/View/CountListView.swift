//
//  CountListView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import SwiftUI

struct CountListView: View {
    @EnvironmentObject var countStore: CountStore
    @State var count: Count = Count(number: 99, date: Date())
    
    var body: some View {
        NavigationStack {
            VStack {
                List(countStore.countData) { number in
                    Button {
                        self.count = count
                    } label: {
                        CountListDetailView(number: number)
                    }
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("Data")
        }
    }
}

struct CountListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CountListView()
                .environmentObject(CountStore())
        }
    }
}
