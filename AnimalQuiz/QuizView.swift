//
//  QuizView.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2025/12/28.
//

import SwiftUI

struct QuizItem{
    let question:String
    var choices:[String]
    let correctAnswer:String

}

struct QuizView: View {
    @State var isShowingScoreView = false
    @State var isShowingResultSymbol = false
    let choices = ["ライオン", "ウサインボルト" ,"チーター", "馬"]
//    let quizItem = QuizItem(
//        questuon: "次のうち、世界で最も速く走る動物はどれですか？",
//        choices: ["ライオン", "ウサインボルト" ,"チーター", "馬"],
//        correctAnswer: "チーター"
//    )
    let quizeItems = [
                QuizItem(
                    question: "次のうち、世界で最も速く走る動物はどれですか？",
                    choices: ["ライオン", "ウサイン・ボルト", "チーター", "馬"],
                    correctAnswer: "チーター"
                ), QuizItem(
                    question: "次のうち、飛ぶことができない鳥はどれですか？",
                    choices: ["ペンギン", "フクロウ" ,"ハト", "スズメ"],
                    correctAnswer: "ペンギン"
                ), QuizItem(
                    question: "次のうち、哺乳類ではない動物はどれですか？",
                    choices: ["イルカ", "カメ" ,"コウモリ", "ヒト"],
                    correctAnswer: "カメ"
                ), QuizItem(
                    question: "次のうち、夜行性ではない動物はどれですか？",
                    choices: ["ライオン", "コアラ" ,"ゾウ", "フクロウ"],
                    correctAnswer: "ゾウ"
                ), QuizItem(
                    question: "次のうち、最も長い首を持つ動物はどれですか？",
                    choices: ["キリン", "アルパカ" ,"ゾウ", "ウマ"],
                    correctAnswer: "キリン"
                ),
        
            ]
    
    
    
    var body: some View {
       ZStack {
           VStack {
                Text("問題番号: 1/5")
                   .font(.headline)
                   .padding(10)
                   .background(Color.originalGreen)
                   .foregroundStyle(.white)
                   .clipShape(RoundedRectangle(cornerRadius: 10))
               

               Text(quizeItems[1].question)
                   .font(.title)
                   .padding()
                   .frame(maxWidth: .infinity)
                   .background(Color.originalLightGreen)
                   .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.originalGreen, lineWidth: 5)
                   )
                   .frame(maxHeight:.infinity)
               
               
               ForEach(quizeItems[1].choices, id: \.self) {choice in
                   Button{
                       //isShowingScoreView = true
                       print("\(choice)を選択しました。")
                       print("正解は\(quizeItems[1].correctAnswer)です。")
                       
                       if choice == quizeItems[1].correctAnswer{
                           print("正解です。")
                       } else{
                           print("不正解です。")
                       }
                       isShowingResultSymbol = true
                       
                       DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                           isShowingResultSymbol = false
                       }
                   } label: {
                       Text(choice)
                           .font(.title.bold())
                           .padding()
                           .frame(maxWidth: .infinity)
                           .background(Color.originalSkin)
                           .foregroundStyle(.originalBrown)
                           .clipShape(RoundedRectangle(cornerRadius: 10))
                   }
                   
                   .fullScreenCover(isPresented: $isShowingScoreView) {
                       ScoreView()
                   }
               }
               
               
               }
           .padding()
           
           if isShowingResultSymbol {
               
               Text("⚪︎")
                   .font(.system(size: 1000))
                   .minimumScaleFactor(0.1)
                   .foregroundStyle(.red)
                   .lineLimit(1)
                   .frame(maxWidth: .infinity, maxHeight: .infinity)
                   .background(Color.black.opacity(0.5))
               }
           
       }
       .backgroundImage()
    }
      
        
}

#Preview {
    QuizView()
}



//import SwiftUI
//
//struct QuizItem{
//
//    let question:String
//    var choices:[String]
//    let correctAnswer:String
//    
//}
//
//struct QuizView:View {
//    @State var isShowingScoreView = false
//    @State var isShowingResultSymbol=false
//    let choices = ["ライオン", "ウサイン・ボルト", "チーター", "馬"]
//    
//    let quizeItems = [
//        QuizItem(
//            question: "次のうち、世界で最も速く走る動物はどれですか？",
//            choices: ["ライオン", "ウサイン・ボルト", "チーター", "馬"],
//            correctAnswer: "チーター"
//        ), QuizItem(
//            question: "次のうち、飛ぶことができない鳥はどれですか？",
//            choices: ["ペンギン", "フクロウ" ,"ハト", "スズメ"],
//            correctAnswer: "ペンギン"
//        ), QuizItem(
//            question: "次のうち、哺乳類ではない動物はどれですか？",
//            choices: ["イルカ", "カメ" ,"コウモリ", "ヒト"],
//            correctAnswer: "カメ"
//        ), QuizItem(
//            question: "次のうち、夜行性ではない動物はどれですか？",
//            choices: ["ライオン", "コアラ" ,"ゾウ", "フクロウ"],
//            correctAnswer: "ゾウ"
//        ), QuizItem(
//            question: "次のうち、最も長い首を持つ動物はどれですか？",
//            choices: ["キリン", "アルパカ" ,"ゾウ", "ウマ"],
//            correctAnswer: "キリン"
//        ),
//        
//    ]
//    
//    var body: some View {
//        ZStack{
//            VStack{
//                Text("問題番号: 1/5")
//                
//                    .font(.headline)
//                    .padding(10)
//                    .background(Color.originalGreen)
//                    .foregroundStyle(.white)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                
//                
//                
//                
//                Text(quizeItems[1].question)
//                
//                    .font(.title)
//                    .padding()
//                    .frame(maxWidth:.infinity)
//                    .background(Color.originalLightGreen)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(.originalGreen,lineWidth: 5)
//                        
//                    )
//                    .frame(maxHeight:.infinity)
//                
//                
//                ForEach(quizeItems[1].choices,id: \.self){choice in
//                    
//                    
//                    
//                    Button {
//                        //isShowingScoreView = true
//                        
//                        print("\(choice)を選択しました。")
//                        print("正解は\(quizeItems[1].correctAnswer)です。")
//                        if choice == quizeItems[1].correctAnswer{
//                            print("正解です。")
//                        }else{
//                            print("不正解です。")
//                            
//                        }
//                    
//                    isShowingResultSymbol = true
//                      
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                            isShowingResultSymbol = false
//                        }
//                        
//                }label: {
//                        Text(choice)
//                            .font(.title.bold())
//                            .padding()
//                            .frame(maxWidth:.infinity)
//                            .background(Color.originalSkin)
//                            .foregroundStyle(.originalBrown)
//                            .clipShape(RoundedRectangle(cornerRadius: 10))
//                        
//                    }
//                    
//                    .fullScreenCover(isPresented:$isShowingScoreView){
//                        ScoreView()
//                    }
//                    
//                    
//                }
//                
//                
//            }
//            
//            
//            .padding()
//            
//          
//            
//            if isShowingResultSymbol{
//                Text("⚪︎")
//                    .font(.system(size: 1000))
//                    .minimumScaleFactor(0.1)
//                    .foregroundStyle(.red)
//                    .lineLimit(1)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.black.opacity(0.5))
//                
//                }
//            
//        }
//        
//        .backgroundImage()
//    }
//}
//
//    #Preview {
//            QuizView()
//        }

