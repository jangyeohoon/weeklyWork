//
//  PockemonDetailView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/16.
//

import SwiftUI

struct PokemonDetailView: View {
    var pockemon: Pockemon
    
    var body: some View {
        Form {
            Section {
                AsyncImage(url: URL(string: pockemon.imagePath)) { image in
                    
                    
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                } placeholder: {
                    ProgressView()
                    // Text("그림 로딩중")
                }
            }
            
            Section("이름") {
                Text("\(pockemon.name)")
                    .bold()
            }
            
            Section("번호") {
                Text("\(pockemon.numberString)")
            }
            
            Section("타입") {
                
                ForEach(pockemon.types, id: \.self) { type in
                    Text("\(type.displayString)")
                }
            }
        }
        .navigationTitle("\(pockemon.name)")
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            PokemonDetailView(pockemon: pockemons[0])
        }
    }
}
