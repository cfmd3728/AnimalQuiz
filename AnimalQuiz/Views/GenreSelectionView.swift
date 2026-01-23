//
//  GenreSelectionView.swift
//  AnimalQuiz
//
//  Created by 菊池和広 on 2026/01/22.
//

import SwiftUI

struct GenreSelectionView: View {
    var body: some View {
        VStack {
            Button {

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
    }

}



#Preview {
    GenreSelectionView()
}







//import SwiftUI
//
//struct GenreSelectionView: View {
//    
//    var body: some View {
//        VStack{
//            Button{
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
//        
//        
//    }
//}
//    
//    #Preview {
//        GenreSelectionView()
//    }
