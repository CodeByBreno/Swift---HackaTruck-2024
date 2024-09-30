import SwiftUI

struct ImageCharacter: View {
    @State var url: String?;
    @State var dimension: Double?;
        
    var body: some View {
        AsyncImage(url: URL(string: url ?? "")) {
            image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: dimension ?? 90, height: dimension ?? 90)
                .cornerRadius(.infinity)
                .clipped()
        } placeholder: {
            ProgressView()
        }
    }
}
