//
//  ViewElements.swift
//  saVar
//
//  Created by Veli Bacık on 4.09.2026.
//

import SwiftUI

struct ViewElementsMainView: View {
    var body: some View {
        VStack{
        }
    }
}
#Preview {
    RectangleView()
}

struct RectangleView : View {
    @State var ChooseRec : [String] = ["a", "b","c","d"]
    @State var rectangleBoundsWidth = UIScreen.main.bounds.width
    @State var rectangleBoundsHeight = UIScreen.main.bounds.height
    @Environment(\.verticalSizeClass) var verticalSizeClass
    var body: some View {
        ScrollView(.horizontal) {
            HStack{
                ForEach(ChooseRec.indices, id: \.self){ data in
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: rectangleBoundsWidth * 0.35,height: rectangleBoundsHeight * 0.30)
                        .containerRelativeFrame(.horizontal, count: verticalSizeClass == .regular ? 1 : 5 ,
                                                spacing: 1)
                        .foregroundColor(.white)
                        .scrollTransition { rect, phase in
                            rect
                                .opacity(phase.isIdentity ? 1.0 : 0.2 )
                                .scaleEffect(x:phase.isIdentity ? 2.0 : 1, y: phase.isIdentity ? 1.0 : 0.1)
                                .offset(y: phase.isIdentity ? 0 : 50)
                        }
                }
            }
        }
    }
}
