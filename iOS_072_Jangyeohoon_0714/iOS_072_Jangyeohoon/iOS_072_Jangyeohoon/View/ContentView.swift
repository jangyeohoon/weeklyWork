//
//  ContentView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            PockemonListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ContentView()
        }
    }
}
