//
//  DetailView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/19.
//

import SwiftUI

struct DetailView: View {
    var pockemon: Pockemon
    
    var body: some View {
        NavigationStack{
            Form {
                Section {
                    AsyncImage(url: URL(string: pockemon.imagePath)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                    } placeholder: {
                        ProgressView()
                    }
                }
                Section("이름") {
                    Text("\(pockemon.name)")
                        .bold()
                }
            }
        }
        .navigationTitle("\(pockemon.name)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(pockemon: Pockemon(name: "이상해씨", imagePath: "https://data1.pokemonkorea.co.kr/newdata/pokedex/mid/000101.png"))
        }
    }
}
