//
//  Screen3.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct Screen3: View {
    @State var showAppChoice = false
    var playerScore = 0
    var appScore = 0
    var choice: String
    
    var body: some View {
        VStack(spacing: 0){
            Text("Your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Score \(playerScore):\(appScore)")
                .font(.system(size: 17))
                .foregroundColor(Color("Violet"))
                .padding(.top,12)
            VStack (spacing: 24){
                NavigationLink(destination: Screen4(choice: self.choice)) {
                    EmojiButton(emoji: "\(choice)")
                        .transition(.slide)
                }
            }
            .padding(.top, 150)
            
            Spacer()
            NavigationLink(destination: Screen2(),
                           label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(Color("Violet"))
                    Text("I changed my mind")
                        .foregroundColor(.white)
                }.frame(height: 50)
            }).padding(.bottom, 40)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3(choice: " ")
    }
}
