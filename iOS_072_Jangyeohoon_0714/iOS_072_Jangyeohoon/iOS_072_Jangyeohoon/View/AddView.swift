//
//  AddView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/17.
//

import SwiftUI

struct AddView: View {
    
    @Binding var isShowingSheet: Bool
    var pockemonStore: PockemonStore
    @State var name: String = ""
    @State var imagePath: String = ""
    
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                List(pockemon) { pockemon in
                    Button {
                        pockemonStore.addPockemon(name: pockemon.name, imagePath: pockemon.imagePath)
                        isShowingSheet = false
                    } label: {
                        itemView(pockemonStore: pockemonStore, pockemon: pockemon)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("취소") {
                        isShowingSheet = false
                    }
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(isShowingSheet: .constant(true), pockemonStore: PockemonStore())
    }
}
