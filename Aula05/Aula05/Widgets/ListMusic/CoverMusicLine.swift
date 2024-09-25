import SwiftUI

struct CoverMusicLine: View {
    @State var imageUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipped()
        } placeholder: {
            ProgressView() // Indicador de carregamento enquanto a imagem não é carregada
        }
    }
}
