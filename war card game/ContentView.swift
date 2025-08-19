//
//  ContentView.swift
//  war card game
//
//  Created by Saksham Tyagi on 19/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Image("background-plain").resizable().edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Image("card3")
                    Image("card4 ")
                }
                Spacer()
                Image("button")
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                }.foregroundStyle(Color.white)
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
