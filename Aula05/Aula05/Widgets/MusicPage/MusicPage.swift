import SwiftUI

struct BackgroundBlurerImage: View {
    @State var url: String
    
    var body: some View {
        GeometryReader {
            geometry in
            let screen_width = geometry.size.width
            let screen_height = geometry.size.height
            
            AsyncImage(url: URL(string: url)) {
                image in
                image
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 70)
                    .opacity(0.7)
                    .aspectRatio(contentMode: .fill)
                    .frame(
                        width: screen_width,
                        height: screen_height*1.1)
            } placeholder: {
                Color
                    .white
                    .frame(
                        width: .infinity,
                        height: .infinity)
            }
        }.ignoresSafeArea()
    }
}

struct SongOptionsIcon: View {
    @State var icon_name: String;
    let size = CGFloat(40);
    
    var body: some View {
        Image(systemName: icon_name)
            .frame(width: size, height: size)
    }
}

struct MusicPage: View {
    @State var music: Music;
    
    var body: some View {
        ZStack {
            BackgroundBlurerImage(url: music.cover)
            VStack {
                CoverMusic(imageUrl: music.cover, width: 250, height: 250)
                SizedBox(height: 50)
                Text(music.name).font(.system(size: 30))
                SizedBox(height: 10)
                Text(music.artist).font(.system(size: 15))
                SizedBox(height: 50)
                HStack {
                    SongOptionsIcon(icon_name:
                        "backward.end.fill")
                    SongOptionsIcon(icon_name: "backward.fill")
                    SongOptionsIcon(icon_name:  "play.fill")
                    SongOptionsIcon(icon_name: "forward.fill")
                    SongOptionsIcon(icon_name: "forward.end.fill")
                }
            }.frame(
                width: .infinity,
                height: .infinity)
        }.ignoresSafeArea()
    }
}
