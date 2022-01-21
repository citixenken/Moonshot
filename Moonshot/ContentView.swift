//
//  ContentView.swift
//  Moonshot
//
//  Created by Ken Muyesu on 19/01/2022.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Address
}

struct Address: Codable {
    let street: String
    let city: String
}
struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 60, maximum: 120))
    ]
    var body: some View {
        ScrollView {
            LazyHGrid(rows: layout) {
                ForEach(0..<1000) {
                    Text("Item: \($0)")
                }
            }
        }
    }
}

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
