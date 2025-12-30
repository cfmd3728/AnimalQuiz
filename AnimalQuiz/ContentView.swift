
//  ContentView.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2025/12/26.


import SwiftUI

struct ContentView: View {
    @State var isShowingQuizView = false
    
    
    var body: some View {
        VStack {
            Text("動物クイズ!")
            Button("スタート") {
                isShowingQuizView = true
                
            }
            .fullScreenCover(isPresented:$isShowingQuizView) {
                QuizView()
            }
            
        }
        .padding()
    }
}


#Preview {
    ContentView()
}





//import SwiftUI
//
//
//
//struct ContentView:View{
//    @State var isShowingQuizView = false
//    
//    var body:some View{
//        VStack{
//            Text("動物クイズ！")
//            Button("スタート"){
//                isShowingQuizView = true
//                
//            }
//            
//        .fullScreenCover(isPresented: $isShowingQuizView) {
//            QuizView()
//        }
//    }
//        .padding()
//}
//
//    
//}
//#Preview {
//    ContentView()
//}

