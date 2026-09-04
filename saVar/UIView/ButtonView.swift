//
//  ButtonView.swift
//  saVar
//
//  Created by Veli Bacık on 31.08.2026.
//

import SwiftUI

struct ButtonView: View {
    @State var buttonCount = 0
    var body: some View {
        VStack{
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.red)
                        .frame(width: 200, height: 200)
                        .overlay {
                            Text("\(buttonCount)")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                }
                Button {
                    buttonCount += 1
                    print("smoke added")
                } label: {
                    CigarView()
                }
                
            }.offset(y:200)
                .padding(20)
        }
    }
}
#Preview {
    ButtonView()
}

struct CigarView: View {
    var body: some View {
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .overlay(content: {
                    Color("cigarColor")
                })
                .frame(width: 200)
                .overlay{
                    RoundedRectangle(cornerRadius: 20)
                        .overlay(Color.white)
                        .frame(width: 200,height: 300)
                }
        }
    }
}
