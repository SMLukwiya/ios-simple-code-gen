
import SwiftUI

struct TextView: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Fizz")
    }
}
