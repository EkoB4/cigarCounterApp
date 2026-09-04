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
    @State var ChooseRec : [String] = ["a", "b"]
    @State var rectangleBoundsWidth = UIScreen.main.bounds.width
    @State var rectangleBoundsHeight = UIScreen.main.bounds.height
    var body: some View {
        HStack{
            ForEach(ChooseRec.indices, id: \.self){ data in
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: rectangleBoundsWidth * 0.39,height: rectangleBoundsHeight * 0.2)
                    .foregroundColor(.white)
            }
        }
    }
}
