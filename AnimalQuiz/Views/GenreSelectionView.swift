//
//  GenreSelectionView.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2026/01/22.
//

import SwiftUI

struct GenreSelectionView: View {
    @State var isShowingQuizView = false
    var body: some View {
        VStack {
            Button {
                isShowingQuizView = true

            } label: {
                Text("動物知識クイズ")
                    .font(.title.bold())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalSkin)
                    .foregroundStyle(.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button {
                isShowingQuizView = true

            } label: {
                Text("動物シルエットクイズ")
                    .font(.title.bold())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalSkin)
                    .foregroundStyle(.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button {
                isShowingQuizView = true

            } label: {
                Text("部分画像クイズ")
                    .font(.title.bold())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalSkin)
                    .foregroundStyle(.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
        .padding()
        .backgroundImage()
        .fullScreenCover(isPresented: $isShowingQuizView) {
            QuizView()
        }
    }

}



#Preview {
    GenreSelectionView()
}







//import SwiftUI
//
//struct GenreSelectionView: View {
//    @State var isShowingQuizView = false
//    
//    var body: some View {
//        VStack{
//            Button{
//                isShowingQuizView = true
//                
//                
//            } label: {
//                Text("動物知識クイズ")
//                    .font(.title.bold())
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.originalSkin)
//                    .foregroundStyle(.originalBrown)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//            }
//            Button{
//                isShowingQuizView = true
//                
//                
//            } label: {
//                Text("動物シルエットクイズ")
//                    .font(.title.bold())
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.originalSkin)
//                    .foregroundStyle(.originalBrown)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//            }
//            
//            Button{
//                isShowingQuizView = true
//                
//                
//            } label: {
//                Text("部分画像クイズ")
//                    .font(.title.bold())
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.originalSkin)
//                    .foregroundStyle(.originalBrown)
//                    .clipShape(RoundedRectangle(cornerRadius: 10))
//            }
//            
//            
//            
//            
//        }
//        .padding()
//        .backgroundImage()
//        .fullScreenCover(isPresented: $isShowingQuizView) {
//            QuizView()
//        }
//        
//        
//    }
//}
//    
//    #Preview {
//        GenreSelectionView()
//    }
