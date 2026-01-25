//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Mohammed on 14/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State private  var message = " i am a developer"
    var body: some View {
//        VStack{
//        Text("What is The Football to You?")
//                .font(.largeTitle)
//                .fontWeight(.thin)
//                .foregroundStyle(.green)
//            HStack{
//                Image(systemName:"figure.american.football")
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundStyle(.blue)
//                Image(systemName:"figure.australian.football")
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundStyle(.indigo)
//                Image(systemName:"figure.indoor.soccer")
//                    .resizable()
//                    .scaledToFit()
//                    .foregroundStyle(.purple)
//                
//            }
//            
//        }
     
        
        VStack {
            Image(systemName: "swift")
                .resizable()
//                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
            Button("Click me") {
                    message = "Goutch"
                print("Goutch")
            }
            
        }
    }
}

#Preview {
    ContentView()
}
