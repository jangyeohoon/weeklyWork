//
//  PockemonSetCellView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/16.
//

import SwiftUI

struct PockemonSetCellView: View {
    var pockemon: Pockemon
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: pockemon.imagePath)) { image in
                
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75)
                    .padding()
            } placeholder: {
                ProgressView()
                
            }
            
            VStack(alignment: .leading) {
                Text("\(pockemon.name)")
                    .bold()
                    .padding(.bottom)
                
                Text("\(pockemon.numberString)")
                
                HStack {
                    ForEach(pockemon.types, id: \.self) { type in
                        Text("\(type.displayString)")
                    }
                }
            }
        }
    }
}

struct PockemonSetCellView_Previews: PreviewProvider {
    static var previews: some View {
        PockemonSetCellView(pockemon: pockemons[0])
    }
}
