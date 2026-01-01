//
//  View+.swift
//  AnimalQuiz
//
//  Created by Tora77 on 2026/01/01.
//

import SwiftUI

extension View{
    @ViewBuilder
    func stroke(color:Color,width:CGFloat = 1) ->some View{
        modifier(StrokeBackground(strokeSize: width, strokeColor: color))
    }
}


//import SwiftUI
//
//extension View{
//    @ViewBuilder
//    func stroke(color:Color,width:CGFloat=1)->some View{
//        modifier(StrokeBackground(strokeSize: width, strokeColor: color))
//    }
//}

