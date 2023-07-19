//
//  itemView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/17.
//

import SwiftUI

struct itemView: View {
    
    var pockemonStore: PockemonStore
    var pockemon: Pockemon
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: pockemon.imagePath)) { image in
                    
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                    
                } placeholder: {
                    ProgressView()
                }
                
                Text("\(pockemon.name)")
                    .bold()
            }
        }
        .shadow(radius: 10)
    }
}

struct itemView_Previews: PreviewProvider {
    static var previews: some View {
        itemView(pockemonStore: PockemonStore(), pockemon: Pockemon(name: "이상해씨", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png"))
    }
}
