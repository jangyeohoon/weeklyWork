//
//  PockemonAddView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/16.
//

import SwiftUI

struct PockemonAddView: View {
    
    var pockemonStore: PockemonStore
    @Binding var isShowingSheet: Bool

    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Text("포켓몬을 골라주세요‼️")
                    .font(.title)
                
                List(pockemons) { pockemon in
                    NavigationLink {
                        PokemonDetailView(pockemon: pockemon)
                    } label: {
                        PockemonCellView(pockemon: pockemon)
                    }
                }
            }
            .padding()
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Pick Pockemon")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
//                        isShowingSheet = false
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Submit") {
//                        stickerStore.addSticker(memo: memo, color: selectedColor)
//                        isShowingSheet = false
                    }
                }
            }
        }
    }
}

struct PockemonAddView_Previews: PreviewProvider {
    static var previews: some View {
        PockemonAddView(pockemonStore: PockemonStore(), isShowingSheet: .constant(true))
    }
}
