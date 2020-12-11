//
//  ContentView.swift
//  StanfordApp
//
//  Created by Rangana Udara on 12/10/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(content: {
            ForEach(0..<4, content: {index in
                CardView(isFaceUp: true)
            })
        })
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
