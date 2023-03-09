//
//  BackgroundImageView.swift
//  FizzBuzz
//
//  Created by m1 on 07/03/2023.
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: getImage()), transaction: Transaction(animation: .default)) { phase in
            switch phase {
            case .success(let image):
                image.resizable().scaledToFill().blur(radius: 0.3).ignoresSafeArea()
            default:
                Color.clear.opacity(0.5).ignoresSafeArea()
            }
        }
    }
    
    func getImage() -> String {
        let listOfImages = [
           "https://picsum.photos/seed/picsum/200/300",
           "https://picsum.photos/id/870/200/300?grayscale&blur=2"
        ]
        
        return listOfImages.randomElement() ?? ""
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
