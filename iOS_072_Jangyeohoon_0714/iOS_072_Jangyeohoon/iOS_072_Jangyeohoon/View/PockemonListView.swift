//
//  PockemonListView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/16.
//

import SwiftUI

struct PockemonListView: View {
    
    @StateObject var pockemonStore: PockemonStore = PockemonStore()
    @State var isShowingAddSheet: Bool = false
    @State var pockemon: Pockemon = Pockemon(name: "이상해씨", number: 1, imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png", types: [.grass, .poison])
    
    var body: some View {
        VStack {
            List(pockemonStore.pockemons) { pockemon in
                Button {
                    self.pockemon = pockemon
                } label: {
                    PockemonCellView(pockemon: pockemon)
                }
            }
        }
        .navigationTitle("Pockemons")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isShowingAddSheet = true
                } label: {
                    Label("Add", systemImage: "􀅼")
                }
            }
        }
        
        .sheet(isPresented: $isShowingAddSheet) {
            // sheet에 isPresented 매개변수로 보내주는
            // 바인딩된 isShowingSheet은
            // (손으로 끌어내려서) sheet가 내려가면
            // 내부에서 알아서 그 값을 false로 바꾼다
            
            // StickerAddView 안에서도 isShowingSheet 값을 바꾸어
            // sheet를 내릴 수 있도로 하기 위해
            // 바인딩을 사용했다
            PockemonAddView(pockemonStore: pockemonStore, isShowingSheet: $isShowingAddSheet)
        }
    }
}

struct PockemonListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PockemonListView()
        }
    }
}
