//
//  CountListView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

import SwiftUI

struct CountListView: View {
    
    var body: some View {
        NavigationStack {
            List() {
                Text("ddfd")
            }
            .navigationTitle("Data")

        }
    }
}

struct CountListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CountListView()
        }
    }
}
