//
//  QuizView.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2025/12/28.
//

import SwiftUI

struct QuizView: View {
    @State var isShowingScoreView = false
    
    var body: some View {
       VStack {
            Text("問題番号: 1/5")
               .font(.headline)
               .padding(10)
               .background(Color.originalGreen)
               .foregroundStyle(.white)
               .clipShape(RoundedRectangle(cornerRadius: 10))

            Text("次のうち、世界で最も速く走る動物はどれですか？")
               .font(.title)
               .padding()
               .frame(maxWidth: .infinity)
               .background(Color.originalLightGreen)
               .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.originalGreen, lineWidth: 5)
               )
           
           Button{
               isShowingScoreView = true
               
           } label: {
               Text("ライオン")
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
           Button{
               isShowingScoreView = true
               
           } label: {
               Text("ウサイン・ボルト")
                   .font(.title.bold())
                   .padding()
                   .frame(maxWidth: .infinity)
                   .background(Color.originalSkin)
                   .foregroundStyle(.originalBrown)
                   .clipShape(RoundedRectangle(cornerRadius: 10))
           }
           Button{
               isShowingScoreView = true
               
           } label: {
               Text("チーター")
                   .font(.title.bold())
                   .padding()
                   .frame(maxWidth: .infinity)
                   .background(Color.originalSkin)
                   .foregroundStyle(.originalBrown)
                   .clipShape(RoundedRectangle(cornerRadius: 10))
           }
           
           Button{
               isShowingScoreView = true
               
           } label: {
               Text("馬")
                   .font(.title.bold())
                   .padding()
                   .frame(maxWidth: .infinity)
                   .background(Color.originalSkin)
                   .foregroundStyle(.originalBrown)
                   .clipShape(RoundedRectangle(cornerRadius: 10))
           }
           
           
           
         
        }
       .padding()
    }
      
        
}

#Preview {
    QuizView()
}



//import SwiftUI
//
//struct QuizView:View {
//    @State var isShowingScoreView = false
//    
//    var body: some View {
//        VStack{
//            Text("問題番号: 1/5")
//
//                .font(.headline)
//                .padding(10)
//                .background(Color.originalGreen)
//                .foregroundStyle(.white)
//                .clipShape(RoundedRectangle(cornerRadius: 10))
//            
//            
//            
//            
//            
//            Text("次のうち、世界で最も速く走る動物はどれですか？")
//                //.font(.title)
//            //               .padding()
//            //               .frame(maxWidth: .infinity)
//            //               .background(Color.originalLightGreen)
//            //               .overlay(
//            //                RoundedRectangle(cornerRadius: 10)
//            //                    .stroke(.originalGreen, lineWidth: 5)
//            
//                .font(.title)
//                .padding()
//                .frame(maxWidth:.infinity)
//                .background(Color.originalLightGreen)
//                .overlay(
//                    RoundedRectangle(cornerRadius: 10)
//                        .stroke(.originalGreen,lineWidth: 5)
//                    
//                )
//
//           // Button{
//                //               isShowingScoreView = true
//                //
//                //           } label: {
//                //               Text("ライオン")
//                //                   .font(.title.bold())
//                //                   .padding()
//                //                   .frame(maxWidth: .infinity)
//                //                   .background(Color.originalSkin)
//                //                   .foregroundStyle(.originalBrown)
//                //                   .clipShape(RoundedRectangle(cornerRadius: 10))
//                //           }
//                //
//            Button{
//                isShowingScoreView = true
//            } label: {
//                Text("ライオン")
//                    .font(.title.bold())
//                    .padding()
//                    .frame(maxWidth:.infinity)
//                    .background(Color.originalSkin)
//                    .foregroundStyle(.originalBrown)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                
//            }
//            Button{
//                isShowingScoreView = true
//            } label: {
//                Text("ウサイン・ボルト")
//                    .font(.title.bold())
//                    .padding()
//                    .frame(maxWidth:.infinity)
//                    .background(Color.originalSkin)
//                    .foregroundStyle(.originalBrown)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                
//            }
//            Button{
//                isShowingScoreView = true
//            } label: {
//                Text("チーター")
//                    .font(.title.bold())
//                    .padding()
//                    .frame(maxWidth:.infinity)
//                    .background(Color.originalSkin)
//                    .foregroundStyle(.originalBrown)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                
//            }
//            Button{
//                isShowingScoreView = true
//            } label: {
//                Text("馬")
//                    .font(.title.bold())
//                    .padding()
//                    .frame(maxWidth:.infinity)
//                    .background(Color.originalSkin)
//                    .foregroundStyle(.originalBrown)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//                
//                
//            }
//                
//            
//            
//            
//            
//            
//            
//            .fullScreenCover(isPresented: $isShowingScoreView) {
//                ScoreView()
//            }
//           
//        }
//        .padding()
//    }
//}
//
//    #Preview {
//            QuizView()
//        }

