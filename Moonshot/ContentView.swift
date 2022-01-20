//
//  ContentView.swift
//  Moonshot
//
//  Created by Ken Muyesu on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(0..<69) { row in
                NavigationLink {
                    Text("DetailView Row No.: \(row)")
                } label: {
                    Text("Row \(row)")
                        .padding()
                }
            .navigationTitle("SwiftUI")
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
