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

struct SizedBox: View{
    @State var width: Double?;
    @State var height: Double?;
    
    var body: some View {
        Spacer().frame(
            width: width ?? 0,
            height: height ?? 0)
    }
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

struct PersonalInfo: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("Breno Gabriel")
                .fontWeight(.bold)
            Text("@_bgab")
            Text("Estudante de Engenharia da Computacação")
        }
    }
}

struct PersonalPages: View {
    let size = 32.0;
    
    var body: some View {
        HStack{
            Image(systemName: "square.grid.3x3")
                .foregroundColor(.black)
                .font(.system(size: size))
            Spacer()
            Image(systemName: "photo.stack")
                .foregroundColor(.black)
                .font(.system(size: size))
            Spacer()
            Image(systemName: "person.crop.circle")
                .foregroundColor(.black)
                .font(.system(size: size))
        }
        .padding(.leading, 40)
        .padding(.trailing, 40)
        .padding(.top, 30)
        .padding(.bottom, 40)
    }
}

struct GridPosts: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ];
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                spacing: 20) {
                
                    ForEach(0..<30) {
                        index in
                        VStack {
                            AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1tsJlbwuBC2jBGT4llDSBftZxNDkGVkI1YQ&s")) {
                                image in
                                image
                                    .resizable()
                                    .scaledToFill()
                                    .clipped()
                            } placeholder: {
                                ProgressView()
                            }
                        }
                    }
            }
        }
        
    }
}

struct InstagramUserPage: View {
    var body:
    some View {
        VStack(alignment: .leading){
            SizedBox(height: 30)
            InstagramHeader()
            PersonalInfo()
                .padding(.leading, 10)
            PersonalPages()
            GridPosts()
        }
    }
}

#Preview {
    InstagramUserPage()
}
