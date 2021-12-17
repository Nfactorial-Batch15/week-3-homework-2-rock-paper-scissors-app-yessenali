//
//  ScreenSixMulti.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct ScreenSixMulti: View {
    var choice: String
    var choice2: String
    var player1 = 0
    var player2 = 0
    
    var body: some View {
        
        VStack(spacing: 0){
            resultTextMulti(choice: self.choice, choice2: self.choice2)
            Text("Score \(player1):\(player2)")
                .font(.system(size: 17))
                .foregroundColor(Color("Violet"))
                .padding(.top,12)
            ZStack{
                HStack{
                    Button (action: {}) {
                        EmojiButtonSmall(emoji: "\(choice)" )
                    }
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button (action: {}) {
                        EmojiButtonSmall(emoji: "\(choice2)")
                    }.padding(.top, 80)
                    
                }
            }
            .padding(.top, 134)
            Spacer()
            NavigationLink(destination: ScreenTwoMulti(),
                           label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(Color("Violet"))
                    Text("Another round")
                        .foregroundColor(.white)
                }.frame(height: 50)
            }).padding(.bottom, 40)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct resultTextMulti: View{
    var choice: String
    var choice2: String
    
    var body: some View {
        if choice == "🗿" && choice2 == "📃" {
            LinearGradient(gradient: Gradient(colors: [Color("Pink"), Color("Red")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Lose (")).frame(height: 58)
                .padding(.top, 120)
            
        } else if choice == "🗿" && choice2 == "✂️" {
            LinearGradient(gradient: Gradient(colors: [Color("Salad"), Color("Green")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Win!")).frame(height: 58)
                .padding(.top, 120)
            
        }  else if choice == "📃" && choice2 == "✂️" {
            LinearGradient(gradient: Gradient(colors: [Color("Pink"), Color("Red")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Lose (")).frame(height: 58)            .padding(.top, 120)
            
        } else if choice == "📃" && choice2 == "🗿" {
            LinearGradient(gradient: Gradient(colors: [Color("Salad"), Color("Green")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Win!")).frame(height: 58)
                .padding(.top, 120)
            
        } else if choice == "✂️" && choice2 == "🗿" {
            LinearGradient(gradient: Gradient(colors: [Color("Pink"), Color("Red")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Lose (")).frame(height: 58)
                .padding(.top, 120)
            
        } else if choice == "✂️" && choice2 == "📃" {
            LinearGradient(gradient: Gradient(colors: [Color("Salad"), Color("Green")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Win!")).frame(height: 58)
                .padding(.top, 120)
            
        } else {
            LinearGradient(gradient: Gradient(colors: [Color("Yellow"), Color("Orange")]), startPoint: .leading, endPoint: .trailing)
                .mask(textResult(result: "Tie!")).frame(height: 58)
                .padding(.top, 120)
        }
    }
}

struct ScreenSixMulti_Previews: PreviewProvider {
    static var previews: some View {
        ScreenSixMulti(choice: " ", choice2: " ")
    }
}
