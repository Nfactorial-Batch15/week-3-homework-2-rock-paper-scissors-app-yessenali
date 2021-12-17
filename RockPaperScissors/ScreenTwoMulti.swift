//
//  ScreenTwoMulti.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct ScreenTwoMulti: View {
    var player1 = 0
    var player2 = 0
    
    var body: some View {
        VStack(spacing: 0){
            Text("Take your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Player 1 • Score \(player1):\(player2)")
                .font(.system(size: 17))
                .foregroundColor(Color("Violet"))
                .padding(.top,12)
            VStack (spacing: 24){
                NavigationLink(destination: Screen3(choice: "🗿")) {
                    EmojiButton(emoji: "🗿")
                }
                NavigationLink(destination: Screen3(choice: "📃")) {
                    EmojiButton(emoji: "📃")
                }
                NavigationLink(destination: Screen3(choice: "✂️")) {
                    EmojiButton(emoji: "✂️")
                }
            }
            .padding(.top, 74)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ScreenTwoMulti_Previews: PreviewProvider {
    static var previews: some View {
        ScreenTwoMulti()
    }
}
