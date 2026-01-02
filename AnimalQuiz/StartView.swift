
//  StartView.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2025/12/26.


//import SwiftUI
//
//struct StartView: View {
//    @State var isShowingQuizView = false
//    
//    
//    var body: some View {
//        VStack {
//            Spacer()
//            Text("どうぶつ\nクイズ!")
//                .font(.system(size: 70).bold())
//                .foregroundStyle(.yellow)
//                .stroke(color: .green, width: 5)
//            Spacer()
//            
//            Button {
//                isShowingQuizView = true
//                
//            } label: {
//                Image(.startButton)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(maxWidth: .infinity)
//            }
//            .fullScreenCover(isPresented:$isShowingQuizView) {
//                QuizView()
//            }
//            
//        }
//        .padding()
//        .backgroundImage()
//        
//    }
//}
//
//
//#Preview {
//    StartView()
//}





import SwiftUI



struct StartView:View{
    @State var isShowingQuizView = false
    
    var body:some View{
       
        VStack{
            Spacer()
            Text("どうぶつ\nクイズ！")
            
                .font(.system(size: 70).bold())
                .foregroundStyle(.yellow)
                .stroke(color: .green, width: 5)
            Spacer()
            
            Button{
                isShowingQuizView = true
                
            } label: {
                Image(.startButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
            }
            
        .fullScreenCover(isPresented: $isShowingQuizView) {
            QuizView()
        }
    }
        .padding()
        .backgroundImage()
}

    
}
#Preview {
    StartView()
}

