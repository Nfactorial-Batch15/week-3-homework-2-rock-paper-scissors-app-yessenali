//
//  Screen5.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct Screen5: View {
    @State var showScreen6: Bool
    
    var choice: String
    var appChoice = Int.random(in: 0...2)
    
    var body: some View {
        VStack(spacing: 0){
            NavigationLink(isActive: $showScreen6) {
                Screen6(choice: self.choice, appChoice: self.appChoice)
            } label: {
                EmptyView()
            }
            Text("Your opponent’s pick")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
                .multilineTextAlignment(.center)

            VStack (spacing: 24){
                switch appChoice {
                case 0:
                    Button (action: {}) {
                        EmojiButton(emoji: "🗿" )
                    }
                case 1:
                    Button (action: {}) {
                        EmojiButton(emoji: "📃" )
                    }
                default:
                    Button (action: {}) {
                        EmojiButton(emoji: "✂️" )
                    }
                }
            }
            .padding(.top, 74)
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    showScreen6 = true
                }
            }
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct Screen5_Previews: PreviewProvider {
    static var previews: some View {
        Screen5(showScreen6: false, choice: " ")
    }
}
