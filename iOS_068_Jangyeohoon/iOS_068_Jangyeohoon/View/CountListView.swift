//
//  CountListView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import SwiftUI

struct CountListView: View {
    @EnvironmentObject var countStore: CountStore
    
    var body: some View {
        NavigationStack {
            VStack {
                List{
                    ForEach(countStore.countData) { number in
                        HStack {
                            VStack(alignment: .leading) {
                                Text("\(number.number)")
                                Text("\(number.dateString)")
                            }
                        }
                        .shadow(radius: 5)
                    }
                    .onDelete { indexSet in
                        countStore.deleteItem(at: indexSet)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Data")
            
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        countStore.reset()
                    } label: {
                        Text("초기화")
                    }
                }
            }
            
            .refreshable {
                countStore.fetchCounts()
            }
            .onAppear {
                countStore.fetchCounts()
            }
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
