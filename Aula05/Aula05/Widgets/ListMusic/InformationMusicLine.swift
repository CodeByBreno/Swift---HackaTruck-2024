import SwiftUI

struct InformationMusicLine: View {
    @State var name: String;
    @State var artist: String;
    
    var body: some View {
        VStack(alignment: .leading){
            Text(name).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.system(size: 12))
            Text(artist).font(.system(size: 10))
        }.frame(alignment: .leading)
    }
}
