//
//  ScreenThreeMulti.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct ScreenThreeMulti: View {

    var choice: String
    var player1 = 0
    var player2 = 0
    
    var body: some View {
        VStack(spacing: 0){
            Text("Your pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
            Text("Player 1 • Score \(player1):\(player2)")
                .font(.system(size: 17))
                .foregroundColor(Color("Violet"))
                .padding(.top,12)
            VStack (spacing: 24){
                NavigationLink(destination: ScreenFourMulti(choice: self.choice, choice2: self.choice)) {
                        EmojiButton(emoji: "\(choice)")
                            .transition(.slide)
                    }
            }
            .padding(.top, 74)

            Spacer()
            NavigationLink(destination: ScreenTwoMulti(),
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

struct ScreenThreeMulti_Previews: PreviewProvider {
    static var previews: some View {
        ScreenThreeMulti(choice: " ")
    }
}
