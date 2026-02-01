//
//  ContentView.swift
//  YouAreAwsome
//
//  Created by Mohammed on 14/01/2026.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private  var message = ""
    @State private var img = ""
    @State private var imgNumber  = 0
    @State private var lastMessageNumber  = -1
    @State private var lastImageNumber  = -1
    @State private var lastSoundNumber  = -1
    let imageCount = 10
    @State private var soundPlayer: AVAudioPlayer!
    
    
    
    var body: some View {
        
        
        
        
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
                  
                    lastMessageNumber = nonRepeatingRandom(upperBonds: messages.count, lastNumber: lastMessageNumber)
                    message = messages[lastMessageNumber]
                    
                
            
                    lastImageNumber = nonRepeatingRandom(upperBonds: imageCount, lastNumber: lastImageNumber)
                    img = "image" + String(lastImageNumber)
                    
                   
                    lastSoundNumber = nonRepeatingRandom(upperBonds: 6, lastNumber: lastSoundNumber)
                    
                    let soundName = "sound\(lastSoundNumber)"
                    playSound(soundName: soundName)
                    
                    
                }
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
        }
        .padding(15)
    }
    
    func playSound(soundName: String){
        guard let soundFile = NSDataAsset(name: soundName) else {
            print("sound file of \(soundName) is uploaded")
            return
        }
        
        do{
            soundPlayer = try AVAudioPlayer(data: soundFile.data)
            soundPlayer.play()
        }catch{
            print("😡 an error occure \(error)")
            
        }
    }
    
    func nonRepeatingRandom (upperBonds: Int , lastNumber: Int) -> Int{
        var messageNumber :Int
        
        repeat  {
            messageNumber = Int.random(in: 0..<upperBonds)
            
        } while messageNumber == lastMessageNumber
        return messageNumber
        
    }
}

#Preview {
    ContentView()
}
