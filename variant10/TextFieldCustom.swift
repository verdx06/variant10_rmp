//
//  TextFieldCustom.swift
//  variant10
//
//  Created by Виталий Багаутдинов on 29.02.2024.
//

import SwiftUI

struct TextFieldCustom: View {
    
    var w: CGFloat
    var h: CGFloat
    
    var NameImage: String
    var Name: Text
    @Binding var text: String
    var secure: Bool = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty { 
                HStack {
                    Image(systemName: NameImage)
                        .resizable()
                        .frame(width: w, height: h) //25 40
                        .foregroundColor(.white)
                        .padding(.leading)
                        .padding(.leading)
                    Name.foregroundColor(.white).padding(.leading)
                }
            }
            
            if self.secure {
                     SecureField("", text: $text)
                        .padding()
                        .background(.black)
                        .opacity(0.25)
                        .foregroundColor(.white)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 1)
                        )
                            .padding(.horizontal)
            } else {
                    TextField("", text: $text)
                        .padding()
                        .background(.black)
                        .opacity(0.25)
                        .foregroundColor(.white)
                        .overlay(
                            
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.white, lineWidth: 1)
                        )
                            .padding(.horizontal)
                    
            }
        }
    }
//    var body: some View {
//        TextField("Username", text: $username)
//            .foregroundColor(.gray)
//                .padding()
//                .overlay(
//                    RoundedRectangle(cornerRadius: 10)
//                        .background(.gray)
//                        .opacity(0.2)
//                )
//                .overlay(
//                    
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color.lightgray, lineWidth: 1)
//                )
//    }
}

//#Preview {
//    TextFieldCustom(NameImage: "lock.fill", Name:
//                        Text("popa"), text: $n)
//}
