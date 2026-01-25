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
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                .frame(width: 200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            Spacer()
            HStack{
                Button("Aweosme!") {
                    message = "Aweosme"
                    print("Aweosme")
                }
                Button("Great!"){
                    message = "Great"
                    print("Great")
                }
                
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
    }
}

#Preview {
    ContentView()
}
