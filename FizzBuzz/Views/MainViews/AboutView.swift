
import SwiftUI

struct AboutView: View {
    var body: some View {
        ZStack {
            BackgroundImageView()
            Text("""
    FizzBuzz is a common coding task given during interviews that tasks candidates to write a solution that prints integers one-to-N, labeling any integers divisible by three as “Fizz,” integers divisible by five as “Buzz” and integers divisible by both three and five as “FizzBuzz.” Understanding how to solve it can help solidify some basic algorithmic understandings
    """).font(.title2).fontWeight(.semibold).multilineTextAlignment(.leading).padding()
                .frame(width: UIScreen.main.bounds.width)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
