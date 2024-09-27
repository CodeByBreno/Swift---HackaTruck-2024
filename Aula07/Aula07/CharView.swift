import SwiftUI

struct CharView: View {
    @State var character: Character;
    
    var body: some View {
        Text(character.name ?? "")
    }
}
