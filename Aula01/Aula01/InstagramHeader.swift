//
//  InstagramHeader.swift
//  Aula01
//
//  Created by Turma01-7 on 18/09/24.
//

import SwiftUI

func getRoundRemoteImage(url: String) -> some View{
    return
        AsyncImage(url: URL(string: url)){
            image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 100))
            } placeholder: {
                ProgressView()
            }
}

func editProfileButton() -> some View{
    return
        Text("Editar Perfil")
        .frame(width: 200, height: 20)
        .font(.system(size: 15))
        .padding(
            EdgeInsets(
                top: 3,
                leading: 15,
                bottom: 3,
                trailing: 15
            )
        )
        .background(Color.gray.opacity(0.3))
        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
}

struct InstagramHeader: View {
    var body: 
    some View {
        HStack{
            getRoundRemoteImage(url: "https://avatars.githubusercontent.com/u/132024181?v=4").padding()
            VStack {
                StatisticsUser()
                editProfileButton()
                
            }
        }
    }
}

#Preview {
    InstagramHeader()
}
