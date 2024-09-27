import SwiftUI

struct SizedBox: View {
    @State var width: Double?;
    @State var height: Double?;
    
    var body: some View {
        Spacer().frame(
            width: width ?? 0,
            height: height ?? 0)
    }
}

