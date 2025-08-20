//
//  ContentView.swift
//  war card game
//
//  Created by Saksham Tyagi on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            
            Image("background-plain").resizable().edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Image(playerCard)
                    Image(cpuCard)
                }
                Spacer()
//                Image("button")
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundStyle(Color.white)
                Spacer()
            }
        }
    }
    func deal(){
        // Randomize the player card
        var playerCardIndex = Int.random(in: 2...13)
        playerCard = "card" + String(playerCardIndex)
        
        // Rnadomize the CPU card
        var cpuCardIndex = Int.random(in: 2...13)
        cpuCard = "card" + String(cpuCardIndex)
        
        // Update the Score
        if playerCardIndex > cpuCardIndex {
            playerScore += 1
        }
        else if playerCardIndex < cpuCardIndex {
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
