//
//  CountView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/30.
//

//첫번째 탭 : 한가운데 숫자 누르면 숫자 증가, 저장하기/초기화 같은 부가 버튼 있음

import SwiftUI

struct CountView: View {
    
    @State var number: Int
    
    var body: some View {
        NavigationStack {
            VStack {
                Button {
                    toggleButton()
                } label: {
                    Text("\(number)")
                        .font(.system(size: 550))
                }
                .frame(width: 350, height: 500)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                
                HStack {
                    Button {
                        resetButton()
                    } label: {
                        Text("초기화")
                    }.padding()
                    
                    Button {
                        
                    } label: {
                        Text("저장")
                    }.padding()
                }.padding()
                
                HStack {
                    Button {
                        minusNumber()
                    } label: {
                        Text("카운트 빼기")
                    }
                    
                }
                
                .padding()
                
            }
            .navigationTitle("Count")
        }
    }
    
    func toggleButton() {
        number += 1
    }
    
    func resetButton() {
        number = 0
    }
    
    func minusNumber() {
        number -= 1
    }
}

struct CountView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            CountView(number: 0)
        }
    }
}
