//
//  ImageBasic.swift
//  Aula01
//
//  Created by Turma01-7 on 18/09/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View{
        HStack {
            AsyncImage(url: URL(string: "https://p2.trrsf.com/image/fget/cf/1200/1200/middle/images.terra.com/2023/12/20/1527502278-golden-retriever.jpg")){
                image in
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 100))
                } placeholder: {
                    ProgressView()
                }
            VStack(alignment: .leading){
                Text("HackaTruck").foregroundColor(.red).font(.system(size: 30))
                Text("77 Universidades").foregroundColor(.blue)
                    .font(.system(size: 30))
                Text("5 Regiões").foregroundColor(.yellow)
                    .font(.system(size: 30))
            }.padding()
        }
    }
}

#Preview {
    ImageBasic()
}
