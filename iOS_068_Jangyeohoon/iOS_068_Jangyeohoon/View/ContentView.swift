//
//  ContentView.swift
//  iOS_068_Jangyeohoon
//
//  Created by 장여훈 on 2023/07/29.
//

/*
 주제: 탭 카운터 만들기
 
 첫번째 탭 : 한가운데 숫자 누르면 숫자 증가, 저장하기/초기화 같은 부가 버튼 있음
 두번째 탭 : 진행된 결과들 목록 보여주기
 세번째 탭 : 도움말, 만든사람 소개
 UserDefaults 써서 결과들 저장 하는데 활용해볼 것
 유민영 강사님의 앱 스토어 앱 참고
 앱 스토어 링크
 UIKit / SwiftUI, 둘 중 무엇을 사용해도 상관없음
 오류만 없다면 다 개발 못해도 개발된 내용까지 제출해주시면 감사하겠습니다
 */

import SwiftUI

struct ContentView: View {
    
    @State var number: Int
    @State var tabIndex: Int = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
            NavigationStack{
                CountView(countStore: CountStore(), number: number)
            }
            .tabItem {
                Image(systemName: "stopwatch")
                Text("Count")
            }
            .tag(1)
            
            CountListView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Data")
                }
                .tag(2)
            
            InfoView()
                .tabItem {
                    Image(systemName: "chart.bar.doc.horizontal")
                    Text("Infomation")
                }
                .tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(number: 0)
    }
}
