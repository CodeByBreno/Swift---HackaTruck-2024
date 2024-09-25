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
            Text("CodeByBreno").font(.system(size: 12))
        }
    }
}

struct AlbumTitle: View {
    var body: some View {
        VStack() {
            SizedBox(height: 10)
            Image("rising_sun")
                .resizable()
                .frame(width: 160, height: 160)
                .cornerRadius(40)
            SizedBox(height: 20)
            Text("HackaFM")
                .font(.system(size: 20))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            SizedBox(height: 5)
            Text("General album")
                .font(.system(size: 14))
            SizedBox(height: 20)
            ProfileLine()
        }
        .frame(width: 330, height: 300)
        .background(Color.gray.opacity(0.15))
        .cornerRadius(20)
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                AlbumTitle()
                SizedBox(height: 10)
                ListMusic().padding()
            }
            .padding()
            .background(Color.white)
        }
    }
}

#Preview {
    ContentView()
}
