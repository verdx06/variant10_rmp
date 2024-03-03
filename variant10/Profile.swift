//
//  Profile.swift
//  variant10
//
//  Created by Виталий Багаутдинов on 29.02.2024.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        TabView {
            First()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("List")
                }
            Second()
                .tabItem {
                    Image(systemName: "flag")
                    Text("Image ")
                }
            Third()
                .tabItem {
                    Image(systemName: "square.on.square.intersection.dashed")
                    Text("Section ")
                }
        }
    }
}

struct First: View {
    var body: some View {
        List {
            Text("я")
            Text("нюхаю")
            Text("какашки")
        }
    }
}

struct Second: View {
    var body: some View {
        ZStack {
            Image(systemName: "person")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Text("КАРТИНКУ САМА ВСТАВИШЬ В ЭТУ ХУЙНЮ ИМАГЕ ВЫШЕ ТЕКСТА")
        }
    }
}

struct Third: View {
    
    var body: some View {
        Form {
            Section(header: Text("Section 1").font(.title)) {
                Text("Я лох")
            }
            Section(header: Text("Section 2").font(.title)) {
                Text("крамар секс")
                Text("крамар ахуенный")
                Text("алина дота секс деньги")
            }
        }
    }
}

#Preview {
    Profile()
}
