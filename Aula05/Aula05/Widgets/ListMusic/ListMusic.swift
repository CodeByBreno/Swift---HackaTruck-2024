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
                    NavigationLink(
                        destination: MusicPage(music: music)){
                        MusicLine(music: music)
                    }.buttonStyle(.plain)
                }
            }
        }
    }
}

func formatNumber(_ id: Int) -> String {
    if id < 10 {
        return "0\(id)"
    } else {
        return "\(id)"
    }
}

struct MusicLine: View {
    @State var music: Music;
        
    var body: some View {
        HStack {
            Text(formatNumber(music.id))
                .padding()
                .font(.system(size: 10))
                .foregroundColor(.gray)
            CoverMusic(imageUrl: music.cover)
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
