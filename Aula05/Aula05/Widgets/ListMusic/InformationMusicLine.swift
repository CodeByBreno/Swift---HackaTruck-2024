import SwiftUI

struct InformationMusicLine: View {
    @State var name: String;
    @State var artist: String;
    
    var body: some View {
        VStack(alignment: .leading){
            Text(name)
            Text(artist)
        }.frame(width: 200, alignment: .leading)
    }
}
