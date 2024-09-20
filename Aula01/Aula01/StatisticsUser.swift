//
//  PrettyHeader.swift
//  Aula01
//
//  Created by Turma01-7 on 18/09/24.
//

import SwiftUI

func ColumnInfo(num: String, text: String) -> some View{
    return VStack {
        Text(num).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        Text(text).font(.system(size: 10))
    }.padding()
}


struct StatisticsUser: View {
    var body: some View{
        HStack {
            ColumnInfo(num: "8", text: "Posts")
            ColumnInfo(num: "12k", text: "Seguindo")
            ColumnInfo(num: "2k", text: "Seguidores")
        }
    }
}
