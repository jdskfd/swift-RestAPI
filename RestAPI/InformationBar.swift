
import SwiftUI

struct InformationBar: View {
    var body: some View {
        let shape = RoundedRectangle(cornerRadius: 20).zIndex(1)
        shape.aspectRatio(3/1, contentMode: .fit)
            .foregroundColor(.orange)
            .opacity(0.3)
    }
}
