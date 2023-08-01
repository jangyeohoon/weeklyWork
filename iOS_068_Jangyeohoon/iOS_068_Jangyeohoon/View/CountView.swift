//
//  CountView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

//첫번째 탭 : 한가운데 숫자 누르면 숫자 증가, 저장하기/초기화 같은 부가 버튼 있음

import SwiftUI

struct CountView: View {
    @EnvironmentObject var countStore: CountStore
    
    var body: some View {
        NavigationStack {
            Grid {
                Button {
                    toggleButton()
                } label: {
                    Text("\(countStore.number)")
                        .font(.system(size: 150))
                }
                .frame(width: 350, height: 450)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                GridRow {
                    Button {
                        resetButton()
                    } label: {
                        Text("초기화")
                    }
                    .padding()
                    .frame(width: 100, height: 30)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                    
                    Button {
                        countStore.countingData()
                    } label: {
                        Text("저장")
                    }
                    .padding()
                    .frame(width: 100, height: 30)
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(5)
                }
                
                
                HStack {
                    Button {
                        minusNumber()
                    } label: {
                        Text("카운트 빼기")
                    }
                    
                }
                .frame(width: 208, height: 30)
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(5)
                
                .padding()
                
            }
            .navigationTitle("Count")
        }
    }
    
    func toggleButton() {
        countStore.number += 1
    }
    
    func resetButton() {
        countStore.number = 0
    }
    
    func minusNumber() {
        if countStore.number > 0 {
            countStore.number -= 1
        }
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CountView()
                .environmentObject(CountStore())
        }
    }
}
