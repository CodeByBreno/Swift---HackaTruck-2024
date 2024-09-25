import SwiftUI

struct ListMusic: View {
    var body: some View {
        ScrollView {
            VStack {
                ForEach(
                    musicList,
                    id: \.self
                ) {
                    music in
                    MusicLine(music: music)
                }
            }
        }
    }
}

struct MusicLine: View {
    @State var music: Music;
        
    var body: some View {
        HStack {
            CoverMusicLine(imageUrl: music.cover)
            SizedBox(width: 20)
            InformationMusicLine(name: music.name, artist: music.artist)
        }.frame(
            maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
            alignment: .leading
        )
        .background(Color.gray.opacity(0.1))
        .cornerRadius(5)
    }
}
