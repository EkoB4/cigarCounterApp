//
//  ContentView.swift
//  saVar
//
//  Created by Veli Bacık on 31.08.2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Button {
                print("test")
            } label: {
                HStack{
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(Color.red)
                        .frame(width: 200, height: 200)
                        .overlay {
                            Text("Ekle")
                                .foregroundStyle(Color.white)
                                .bold()
                                .frame(width: 200,
                                       height: 200)
                        }
                        
                }
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
