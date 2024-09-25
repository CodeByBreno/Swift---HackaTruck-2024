//
//  ContentView.swift
//  Aula04
//
//  Created by Turma01-7 on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            PinkScreen()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush.fill")
                }
            BlueScreen()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.fill")
                }
            GreenScreen()
                .tabItem {
                    Label("Verde", systemImage: "paintpalette.fill")
                }
        }
        .background(Color.white)
    }
}

#Preview {
    ContentView()
}
