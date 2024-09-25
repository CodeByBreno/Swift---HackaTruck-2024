//
//  ContentView.swift
//  Aula05
//
//  Created by Turma01-7 on 24/09/24.
//

import SwiftUI


struct ProfileLine: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/132024181?v=4")){
                image in
                image
                    .resizable()
                    .frame(width: 20, height: 20)
            } placeholder: {
                ProgressView()
            }
            Text("CodeByBreno").font(.footnote)
        }
    }
}

struct AlbumTitle: View {
    var body: some View {
        VStack {
            SizedBox(height: 50)
            Image("caminhao")
                .resizable()
                .frame(width: 200, height: 200)
            Text("HackaFM")
                .font(.title)
            SizedBox(height: 5)
            Text("General album")
            SizedBox(height: 20)
            ProfileLine()
        }
        .frame(width: 350, height: 400)
        .background(Color.gray.opacity(0.15))
        .cornerRadius(20)
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            SizedBox(height: 30)
            AlbumTitle()
            SizedBox(height: 10)
            ListMusic().padding()
        }
        .padding()
        .background(Color(red: 0.87, green: 1.0, blue: 0.95))
    }
}

#Preview {
    ContentView()
}
