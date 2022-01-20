//
//  ContentView.swift
//  Moonshot
//
//  Created by Ken Muyesu on 19/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            Image("books")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8) //80% width of the screen
                //.padding()
                .frame(width: geo.size.width, height: geo.size.height) //centers view inside GR
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
