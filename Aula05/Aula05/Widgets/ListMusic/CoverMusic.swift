import SwiftUI

struct CoverMusic: View {
    @State var imageUrl: String
    @State var width: Double?
    @State var height: Double?
    
    
    var body: some View {
        AsyncImage(url: URL(string: imageUrl)) { image in
            image
                .resizable()
                .scaledToFit()
                .frame(width: width ?? 50, height: height ?? 50)
                .clipped()
                .cornerRadius(10)
        } placeholder: {
            ProgressView() // Indicador de carregamento enquanto a imagem não é carregada
        }
    }
}
