//
//  Screen2.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct Screen2: View {

    var playerScore = 0
    var appScore = 0
    
    var body: some View {
            
            ZStack{
                
                VStack (spacing: 0){
                    
                    Text("Take your pick")
                        .font(.system(size: 54))
                        .fontWeight(.bold)
                        .frame(width: 358, height: 62)
                    
                    
                    Text("Score \(playerScore):\(appScore)")
                        .font(.system(size: 17))
                        .foregroundColor(Color("Violet"))
                        .padding(.top,12)
                    Spacer().frame(height: 500)
                
                }
                
            VStack(spacing: 24) {
                
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
            }
            
        }
    }

struct EmojiButton: View{
    let emoji: String
    
    var body: some View {
        ZStack{
            Capsule()
                .fill(Color("Purple"))
                .cornerRadius(48)
                .frame(width: 342, height: 128)
            Text(emoji)
                .font(.system(size: 80))
        }
        .padding(.horizontal, 24)
    }
}


struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
