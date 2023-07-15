//
//  ContentView.swift
//  iOS_072_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/02.
//

import SwiftUI

/*
 캐릭터 상성 대전 액션 게임!!!
 
 * 사용자의 팀: 고길동, 희동이, 마이콜 중 선택
 * 상대팀으로 무작위 캐릭터가 나온다: 둘리, 또치, 도우너
 
 만약 user Choice 고길동 이면 -> if bot Choice 둘리  = 고길동 패
 if bot Choice 또치 = 고길동 승
 if bot Choice 도우너 = 고길동 승
 
 만약 user Choice 희동이 이면 -> if bot Choice 둘리  = 희동이 승
 if bot Choice 또치 = 희동이 패
 if bot Choice 도우너 = 희동이 승
 
 만약 user Choice 마이콜 이면 -> if bot Choice 둘리  = 마이콜 패
 if bot Choice 또치 = 마이콜 패
 if bot Choice 도우너 = 마이콜 패
 */

struct ContentView: View {
    
    var ImageArray: [String] = ["둘리", "또치", "도우너"]
    @State var ImageArrays: String = ""
    @State var result: String = ""
    @State var userChoice: String = ""
    
    var body: some View {
        NavigationStack{
            
            VStack{
                Spacer()
                
                Text("상대할 캐릭터")
                    .font(.headline)
                
                Spacer()
                
                Image("\(ImageArrays)")
                    .resizable()
                    .frame(width: 200, height: 230)
                
                Spacer()
                
                Text("\(result)")
                    .font(.largeTitle)
                
                Spacer()
                
                Text("캐릭터를 골라주세요")
                
                HStack{
                    VStack{
                        Button{
                            userChoice = "고길동"
                            randomIndex()
                            printResult()
                        } label: {
                            Image("고길동")
                                .resizable()
                                .frame(width: 100, height: 130)
                        }
                        Text("고길동")
                    }
                    Spacer()
                    
                    
                    VStack{
                        Button{
                            userChoice = "희동이"
                            randomIndex()
                            printResult()
                        } label: {
                            Image("희동이")
                                .resizable()
                                .frame(width: 100, height: 130)
                        }
                        Text("희동이")
                    }
                    Spacer()
                    
                    VStack{
                        Button{
                            userChoice = "마이콜"
                            randomIndex()
                            printResult()
                        } label: {
                            Image("마이콜")
                                .resizable()
                                .frame(width: 100, height: 130)
                        }
                        Text("마이콜")
                    }
                    Spacer()
                }
                .padding()
                .navigationTitle("아기 공룡 둘리 PvP")
            }
        }
    }
    
    // 상대팀 캐릭터를 무작위로 뽑아주는 함수
    func randomIndex() {
        var index = Int.random(in: 0...2)
        ImageArrays = ImageArray[index]
    }
    
    func printResult() {
        if userChoice == "고길동" {
            if ImageArrays == ImageArray[0] {
                result = "고길동과 둘리가 싸워서 둘리가 이겼습니다"
            } else if ImageArrays == ImageArray[1] {
                result = "고길동과 또치가 싸워서 고길동이 이겼습니다"
            } else if ImageArrays == ImageArray[2] {
                result = "고길동과 도우너가 싸워서 고길동이 이겼습니다"
            }
        }
        
        if userChoice == "희동이" {
            if ImageArrays == ImageArray[0] {
                result = "희동이와 둘리가 싸워서 희동이가 이겼습니다"
            } else if ImageArrays == ImageArray[1] {
                result = "희동이와 또치가 싸워서 또치가 이겼습니다"
            } else if ImageArrays == ImageArray[2] {
                result = "희동이와 도우너가 싸워서 희동이가 이겼습니다"
            }
        }
        
        if userChoice == "마이콜" {
            if ImageArrays == ImageArray[0] {
                result = "마이콜과 둘리가 싸워서 둘리가 이겼습니다"
            } else if ImageArrays == ImageArray[1] {
                result = "마이콜과 또치가 싸워서 또치가 이겼습니다"
            } else if ImageArrays == ImageArray[2] {
                result = "마이콜과 도우너가 싸워서 도우너가 이겼습니다"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
