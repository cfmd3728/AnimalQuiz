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
    @State var isAnswerCorrect = false
    @State var currentQuestionIndex = 0
    @State var correctCount = 0
    
    let quizeItems = QuizData.quizeItems
    
    // let choices = ["ライオン", "ウサインボルト" ,"チーター", "馬"]
    //    let quizItem = QuizItem(
    //        questuon: "次のうち、世界で最も速く走る動物はどれですか？",
    //        choices: ["ライオン", "ウサインボルト" ,"チーター", "馬"],
    //        correctAnswer: "チーター"
    //    )
   
    
    
    var body: some View {
        ZStack {
            VStack {
                Text("問題番号:\(currentQuestionIndex+1)/\(quizeItems.count)")
                    .font(.headline)
                    .padding(10)
                    .background(Color.originalGreen)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
                Text(quizeItems[currentQuestionIndex].question)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalLightGreen)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.originalGreen, lineWidth: 5)
                    )
                    .frame(maxHeight:.infinity)
                
                
                ForEach(quizeItems[currentQuestionIndex].choices, id: \.self) {choice in
                    Button{
                        //isShowingScoreView = true
                        //print("\(choice)を選択しました。")
                        //print("正解は\(quizeItems[currentQuestionIndex].correctAnswer)です。")
                        
                        if choice == quizeItems[currentQuestionIndex].correctAnswer{
                            // print("正解です。")
                            isAnswerCorrect = true
                            correctCount+=1
                        } else{
                            // print("不正解です。")
                            isAnswerCorrect = false
                        }
                        isShowingResultSymbol = true
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            isShowingResultSymbol = false
                            if currentQuestionIndex+1 >= quizeItems.count {
                                isShowingScoreView = true
                                return
                                
                            }
                            currentQuestionIndex += 1
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
                        ScoreView(scoreText:"\(quizeItems.count)問中\(correctCount)問正解！")
                    }
                }
                
                
            }
            .padding()
            
            if isShowingResultSymbol {
                Text(isAnswerCorrect ? "⚪︎" : "×")
                    .font(.system(size: 1000))
                    .minimumScaleFactor(0.1)
                    .foregroundStyle(isAnswerCorrect ? .green : .red)
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
//    @State var isAnswerCorrect=false
//    @State var currentQuestionIndex = 0
//    @State var  correctCount = 0
//    
//    let quizeItems = QuizData.quizeItems
//   
//    
//    let choices = ["ライオン", "ウサイン・ボルト", "チーター", "馬"]
//
//    
//    var body: some View {
//        ZStack{
//            VStack{
//                Text("問題番号:\(currentQuestionIndex+1)/\(quizeItems.count)")
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
//                Text(quizeItems[currentQuestionIndex].question)
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
//                ForEach(quizeItems[currentQuestionIndex].choices,id: \.self){choice in
//
//
//
//                    Button {
//                        //isShowingScoreView = true
//
//                        print("\(choice)を選択しました。")
//                        print("正解は\(quizeItems[currentQuestionIndex].correctAnswer)です。")
//                        if choice == quizeItems[currentQuestionIndex].correctAnswer{
//                            print("正解です。")
//                            isAnswerCorrect = true
//                            correctCount+=1
//                        }else{
//                            print("不正解です。")
//                            isAnswerCorrect = false
//
//                        }
//
//                    isShowingResultSymbol = true
//
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//                            isShowingResultSymbol = false
//                        if currentQuestionIndex+1 >= quizeItems.count{
//                            isShowingScoreView = true
//                            return
//                        }
//                        currentQuestionIndex += 1
//                        }
//
//
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
//
//                  ScoreView(scoreText: "\(quizeItems.count)問中\(correctCount)問正解！")
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
//            if  isShowingResultSymbol{
//                Text(isAnswerCorrect ? "⚪︎" : "×")
//                    .font(.system(size: 1000))
//                    .minimumScaleFactor(0.1)
//                    .foregroundStyle(isAnswerCorrect ? .green : .red)
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

