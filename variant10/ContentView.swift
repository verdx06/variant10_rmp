//
//  ContentView.swift
//  variant10
//
//  Created by Виталий Багаутдинов on 29.02.2024.
//

import SwiftUI

struct ContentView: View {
    @State var username = ""
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            ZStack {
                Image("background")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .background(.purple)
                VStack {
                    
                    HStack{
                        Image(systemName: "chevron.backward")
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding()
                        Spacer()
                    }
                    
                    ZStack {
                        Image("eclipse")
                            .resizable()
                            .frame(width: 120, height: 120)
                        Image("beats")
                    }
                    
                    Spacer()
                    
                    Text("Create Account")
                        .font(.system(size: 24))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding(20)
                    
                    
                    TextFieldCustom(w: 25, h: 25, NameImage: "person.circle", Name: Text("Username"), text: self.$username, secure: false)
                    
                    TextFieldCustom(w: 25, h: 20, NameImage: "envelope.fill", Name: Text("Email"), text: self.$email, secure: false)
                    
                    TextFieldCustom(w: 20, h: 25, NameImage: "lock.fill", Name: Text("Password"), text: self.$password, secure: true)
                    
                    NavigationLink {
                        Profile()
                    } label: {
                        Text("Create Account")
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                            .background(.purple)
                            .cornerRadius(10.0)
                            .padding()
                    }
                    VStack {
                        Text("By creating an account or signing you agree to our")
                            .foregroundColor(.white)
                            .font(.system(size: 13))
                        Text("Terms and Conditions")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .underline()
                            .font(.system(size: 13))
                    }

                    Spacer()
                    Spacer()
                    
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
