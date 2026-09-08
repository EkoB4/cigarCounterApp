//
//  ButtonView.swift
//  saVar
//
//  Created by Veli Bacık on 31.08.2026.
//

import SwiftUI

struct MainCigarView: View {
    @State var buttonCount = 0
    @State var isAnimating = false
    var body: some View {
        VStack{
            VStack{
                Text("Hosgeldiniz ,")
                    .font(.system(size: 30))
                Text("Nuriye Hanim")
                    .bold()
                    .font(.system(size: 30))
            }.padding()
            /*Button {
                buttonCount += 1
            } label: {
                VStack{
                    CigarHeadView()
                }
            }*/
            CigarView()
                .scaleEffect(isAnimating ? 1 : 0.00000000000001)
                .animation(.interpolatingSpring, value: isAnimating)
        }.onAppear{
            isAnimating = true
        }
    }
}
#Preview {
    MainCigarView()
}

struct CigarView: View {
    var body: some View {
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        VStack{
            VStack{
                Color("bodyColor")
                    .cornerRadius(20)
                    .frame(width: screenWidth * 0.85, height: screenHeight * 0.4)
                    .overlay {
                        VStack{
                            RectangleView()
                        }
                    }
            }
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: screenWidth * 0.9,height: screenHeight * 0.2)
                    .foregroundColor(Color("settingTabColor"))
                    .overlay {
                        Text("Settings")
                            .bold()
                    }
            }
        }
    }
}

struct CigarHeadView: View{
    var body: some View {
        let MainCigarViewBoundsWidth = UIScreen.main.bounds.width
        let MainCigarViewBoundsHeight = UIScreen.main.bounds.height
        VStack{
            Spacer(minLength: MainCigarViewBoundsWidth * 0.6)
            VStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: MainCigarViewBoundsWidth * 0.7,height: MainCigarViewBoundsHeight * 0.1)
                    .overlay {
                        Color("cigarColor")
                            .cornerRadius(20)
                        VStack{
                            Text("Sigara Ekle !")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                    }
            }
        }
    }
}

