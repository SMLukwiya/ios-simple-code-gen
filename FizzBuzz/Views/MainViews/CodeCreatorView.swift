    
import SwiftUI
import UniformTypeIdentifiers

struct CodeCreatorView: View {
    @State var fizzBuzzAlgViewModel: FizzBuzzAlgViewModel = FizzBuzzAlgViewModel()
    
    var body: some View {
        NavigationStack {
            List(fizzBuzzAlgViewModel.fizzBuzzModels) {item in
                NavigationLink(item.name) {
                    ZStack {
                        Color.gray.opacity(0.5).ignoresSafeArea()
                        ScrollView {
                            VStack {
                                Text(item.fizzBuzzWorkingAlg)
                                    .font(.headline)
                                    .minimumScaleFactor(0.1)
                                    .contextMenu {
                                        Button(action: {
                                            UIPasteboard.general.string = item.fizzBuzzWorkingAlg
                                        }, label: {
                                            Text("Copy to clipboard")
                                            Image(systemName: "doc.on.doc")
                                        })
                                    }
                            }
                        }
                    }
                }
            }
            .navigationTitle("FizzBuzz Alg")
        }
    }
}

struct CodeCreatorView_Previews: PreviewProvider {
    static var previews: some View {
        CodeCreatorView()
    }
}
