//
//  ContentView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/14.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pockemonStore: PockemonStore = PockemonStore()
    @State var pockemon: Pockemon = Pockemon(name: "이상해씨", imagePath: "")
    @State var isShowingAddSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List(pockemonStore.pockemons) { pockemon in
                    Button {
                        self.pockemon = pockemon
                    } label: {
                        itemView(pockemonStore: pockemonStore, pockemon: pockemon)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Pockemon")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingAddSheet = true
                    } label: {
                        Label("Add", systemImage: "plus")
                    }
                }
            }
            .sheet(isPresented: $isShowingAddSheet) {
                AddView(isShowingSheet: $isShowingAddSheet, pockemonStore: pockemonStore)
            }
            
            .refreshable {
                pockemonStore.fetchStickers()
            }
            .onAppear {
                pockemonStore.fetchStickers()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ContentView()
        }
    }
}
