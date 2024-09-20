//
//  HomePageHackaTruck.swift
//  Aula02
//
//  Created by Turma01-7 on 19/09/24.
//

import SwiftUI;

struct Header: View {
    @Binding var nome: String;
    
    var body: some View {
        Text("Bem Vindo, \(nome)")
            .font(.title)
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.white)
        TextField("Insira seu nome", text: $nome)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .cornerRadius(5)
            .frame(width: 200)
    }
}

struct LogoImage: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 350)
            Image("truck")
                .resizable()
                .scaledToFit()
                .frame(width: 280)
            
        }
    }
}

struct EntryButton: View {
    @Binding var modalOn: Bool;
    
    var body: some View {
        Button(
            action: {
                modalOn = true;
            }
        ){
            Text("Entrar")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(
                    EdgeInsets(
                        top: 10,
                        leading: 30,
                        bottom: 10,
                        trailing: 30
                    )
                )
                .foregroundStyle(.white)
                .background(
                    Color(
                        red: 0.2,
                        green:0.65,
                        blue: 0.9
                    ))
                .cornerRadius(10)
        }
    }
}

struct SizedBox : View{
    var h: CGFloat?;
    var w: CGFloat?;
    
    var body: some View {
        Spacer()
            .frame(width: w ?? 0, height: h ?? 0);
    }
}

func ModalAlert() -> Alert {
    return
        Alert(
            title: Text("ATENÇÃO"),
            message: Text("Você apertou no botão"),
            dismissButton: .default(Text("OK"))
        )
}

struct HomePageHackaTruck: View {
    @State var modalOn: Bool = false;
    @State var nome: String = "Breno";
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .blur(radius: 10)
                .ignoresSafeArea()
            Color.blue.opacity(0.05)
            VStack(){
                SizedBox(h: 100)
                Header(nome: $nome)
                SizedBox(h: 100)
                LogoImage()
                Spacer()
                EntryButton(modalOn: $modalOn)
            }
        }.alert(isPresented: $modalOn) {
            ModalAlert()
        }
    }
}


#Preview {
    HomePageHackaTruck()
}
