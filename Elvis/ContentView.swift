//
//  ContentView.swift
//  Elvis
//
//  Created by Raemur Bedward on 2025-06-08.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var image = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
                .shadow(radius: 3)
            
            Spacer()
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            Text(message)
                .foregroundStyle(.purple)
                .font(.largeTitle)
                .fontWeight(.black)
                .shadow(radius: 3)
            Spacer()
            HStack {
                Button("Peace") {
                    message = "Peace"
                    image =  "peacesign"
                }
            
                Button("Love") {
                    message = "Love"
                    image = "heart"
                }
                Button("Understanding") {
                    message = "Understanding"
                    image = "lightbulb"
                }
                    
            }.foregroundStyle(.white)
                .buttonStyle(.borderedProminent)
                    .tint(.purple)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
