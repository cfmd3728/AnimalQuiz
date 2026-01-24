
//  StartView.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2025/12/26.


import SwiftUI

struct StartView: View {
    @State var isShowingGenreSelectionView = false
   
    
    var body: some View {
        VStack {
            Spacer()
            Text("どうぶつ\nクイズ!")
                .font(.system(size: 70).bold())
                .foregroundStyle(.originalYellow)
                .stroke(color: .originalGreen, width: 5)
            Spacer()
            
            Button {
                isShowingGenreSelectionView = true
                
            } label: {
                Image(.startButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
            .fullScreenCover(isPresented:$isShowingGenreSelectionView) {
                //QuizView()
                GenreSelectionView()
                
            }
            
        }
        .padding()
        .backgroundImage()
        
    }
}


#Preview {
    StartView()
}





//import SwiftUI
//
//
//
//struct StartView:View{
//    @State var isGenreSelectionView = false
//    
//    var body:some View{
//       
//        VStack{
//            Spacer()
//            Text("どうぶつ\nクイズ！")
//            
//                .font(.system(size: 70).bold())
//                .foregroundStyle(.originalYellow)
//                .stroke(color: .originalGreen, width: 5)
//            Spacer()
//            
//            Button{
//                isGenreSelectionView = true
//                
//            } label: {
//                Image(.startButton)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(maxWidth: .infinity)
//                
//            }
//            
//        .fullScreenCover(isPresented: $isGenreSelectionView) {
//           // QuizView()
//            GenreSelectionView()
//        }
//    }
//        .padding()
//        .backgroundImage()
//}
//
//    
//}
//#Preview {
//    StartView()
//}

