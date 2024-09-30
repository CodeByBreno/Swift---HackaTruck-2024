import SwiftUI

struct CharView: View {
    @State var character: Character;
    
    var body: some View {
        GeometryReader {
            geometry in
            VStack{
                ImageCharacter(
                    url: character.image,
                    dimension: 200)
                SizedBox(height: 50)
                Text(character.name ?? "")
                    .font(.title)
                Text(character.actor ?? "")
                SizedBox(height: 30)
                if (character.hogwartsStudent ?? false) {
                    Text("Estudante");
                }
                if (character.hogwartsStaff ?? false) {
                    Text("Funcionário de Hogwart")
                }
                Text(character.house ?? "");
                SizedBox(height: 20);
                Text("Núcleo da Varinha: " + (character.wand?.core ?? ""));
                Text("Material da Varinha: " + (character.wand?.wood ?? ""));
                
            }
            .frame(
                width: geometry.size.width,
                height: geometry.size.height*1.2)
            .background(Color(red: 0.5, green: 0.1, blue: 0.1))
            .foregroundStyle(Color.white)
            .ignoresSafeArea()
        }
        
    }
}
