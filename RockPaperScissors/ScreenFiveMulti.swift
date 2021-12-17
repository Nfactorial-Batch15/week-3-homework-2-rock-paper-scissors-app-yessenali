//
//  ScreenFiveMulti.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct ScreenFiveMulti: View {
    var choice: String
    var choice2: String
    var player1 = 0
    var player2 = 0
    
    var body: some View {
        VStack(spacing: 0){
            Text("Take your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Player 2 • Score \(player1):\(player2)")
                .font(.system(size: 17))
                .foregroundColor(Color("Violet"))
                .padding(.top,12)
            VStack (spacing: 24){
                NavigationLink(destination: ScreenThreeMulti(choice: "🗿")) {
                    EmojiButton(emoji: "🗿")
                }
                NavigationLink(destination: ScreenThreeMulti(choice: "📃")) {
                    EmojiButton(emoji: "📃")
                }
                NavigationLink(destination: ScreenThreeMulti(choice: "✂️")) {
                    EmojiButton(emoji: "✂️")
                }
            }
            .padding(.top, 74)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct ScreenFiveMulti_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFiveMulti(choice: " ", choice2: " ")
    }
}
