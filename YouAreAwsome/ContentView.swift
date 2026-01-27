//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Mohammed on 14/01/2026.
//

import SwiftUI

struct ContentView: View {
    @State private  var message = ""
    @State private var img = ""
    @State private var imgNumber  = 0
//    @State private var messageNumber  = 0
    
    
    
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
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 120)
                .animation(.easeInOut(duration: 0.15), value: message)
            Image(img)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.easeInOut, value: img)
            
            
     
            Spacer()
            HStack{
                Button("Press me!") {
                    let messages = ["You are Awesome!",
                                    "Hello, there u make me happy touch the screen to get your gift",
                                    "You Are Great!",
                                    "Fabulous,  that's you",
                                    "You Are Fantastic",
                                    "You Make Me Smile",
                                    "When the genuis Bar needs help, they call you"
                                    
                    ]
                    
                    
                    
                    message = messages[Int.random(in: 0..<messages.count)]
                    img = "image" + String(Int.random(in: 0...9))
                    
//                    imgNumber += 1
//                    messageNumber += 1
//                    if imgNumber > 9{
//                        imgNumber = 0
//                    }
//                    if messageNumber >= messages.count{
//                        messageNumber = 0
//                    }
                    
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        .padding(15)
    }
    
}

#Preview {
    ContentView()
}
