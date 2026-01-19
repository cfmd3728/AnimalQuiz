//
//  ScoreView.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2025/12/29.
//

import SwiftUI

struct ScoreView: View {
    let scoreText:String
    
    
    var body: some View {
        VStack{
            Spacer()
            Text(scoreText)
                .font(.system(size: 40).bold())
                .foregroundStyle(.originalYellow)
                .stroke(color: .originalGreen, width: 5)
            Spacer()
                //.frame(maxHeight: .infinity)
            Button{
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
                windowScene?.windows.first?.rootViewController?.dismiss(animated: true)
                
                
            } label: {
                Image(.topButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .backgroundImage()
    }
}

#Preview {
    ScoreView(scoreText: "")
}




//import SwiftUI
//
//struct ScoreView:View{
//    let scoreText:String
//    var body:some View{
//        
//        VStack{
//            Spacer()
//            Text(scoreText)
//                .font(.system(size: 40).bold())
//                .foregroundStyle(.originalYellow)
//                .stroke(color: .originalGreen, width: 5)
//            Spacer()
//            
//            
//            Button{
//               let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
//                windowScene?.windows.first?.rootViewController?.dismiss(animated:true)
//                                                                            
//            } label: {
//                Image(.topButton)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(maxWidth: .infinity)
//                
//            }
//            
//        }
//        .padding()
//        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .backgroundImage()
//       
//    }
//}
//
//#Preview {
//        ScoreView(scoreText: "")
//    }
//

