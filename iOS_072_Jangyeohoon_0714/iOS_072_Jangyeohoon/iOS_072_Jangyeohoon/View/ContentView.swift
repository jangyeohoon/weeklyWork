//
//  ContentView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/14.
//

import SwiftUI

struct ContentView: View {
    @StateObject var pockemonStore: PockemonStore = PockemonStore()
    @State var pockemon: Pockemon = Pockemon(name: "이상해씨", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png")
    @State var isShowingAddSheet: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                List(pockemonStore.pockemons) { pockemon in
                    Button {
                        
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
