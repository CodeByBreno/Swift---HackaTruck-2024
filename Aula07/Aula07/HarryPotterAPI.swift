//
//  ContentView.swift
//  Aula07
//
//  Created by Turma01-7 on 27/09/24.
//

import SwiftUI

struct ImageCharacter: View {
    @State var url: String?;
    @State var dimension: Double?;
        
    var body: some View {
        AsyncImage(url: URL(string: url ?? "")) {
            image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: dimension ?? 90, height: dimension ?? 90)
                .cornerRadius(.infinity)
                .clipped()
        } placeholder: {
            ProgressView()
        }
    }
}

struct LineCharacter: View {
    @State var character: Character;
    
    var body: some View{
        NavigationLink(destination: CharView(character: character)) {
            HStack(alignment: .center){
                ImageCharacter(url: character.image, dimension: 90)
                SizedBox(width: 20)
                Text(character.name ?? "Nome não informado")
                    .font(.system(size: 20))
            }
            .frame(
                maxWidth: .infinity,
                alignment: .leading)
            .padding()
            SizedBox(height: 10)
        }.buttonStyle(PlainButtonStyle())
    }
}


struct HarryPotterAPI: View {
    @StateObject var controllerCharacter = ControllerCharacter();
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("header_hp")
                    .resizable()
                    .scaledToFit()
                SizedBox(height: 20)
                ScrollView{
                    ForEach(controllerCharacter.chars) {
                        p in
                        LineCharacter(character: p)
                            .frame(width: .infinity)
                    }
                }
                .frame(
                    width: .infinity,
                    alignment: .leading)
                
            }
            .ignoresSafeArea()
            .onAppear {
                controllerCharacter.fetchData()
            }
        }
    }
}

#Preview {
    HarryPotterAPI()
}
