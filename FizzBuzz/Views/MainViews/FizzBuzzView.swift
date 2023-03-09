//
//  FizzBuzzView.swift
//  FizzBuzz
//
//  Created by m1 on 08/03/2023.
//

import SwiftUI

struct FizzBuzzView: View {
    let MAX = 100
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1..<MAX, id: \.self) { num in
                    if num % 15 == 0 {
                        TextView(text: "FizzBuzz")
                    } else if num % 5 == 0 {
                        TextView(text: "Buzz")
                    } else if num % 3 == 0 {
                        TextView(text: "Fizz")
                    } else {
                        TextView(text: "\(num)")
                    }
                }
            }
        }
    }
}

struct FizzBuzzView_Previews: PreviewProvider {
    static var previews: some View {
        FizzBuzzView()
    }
}
