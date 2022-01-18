//
//  Screen4.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct Screen4: View {
    
    @State var showAppChoice = false
    @State private var rotate = -135
    @State private var drawErase = 0
    @State private var isAnimating = false
    var choice: String
    
    var body: some View {
        VStack(spacing: 0){
            NavigationLink(isActive: $showAppChoice) {
                Screen5(showScreen6: false, choice: self.choice)
            } label: {
                EmptyView()
            }
            Text("Your opponent is thinking")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
                .multilineTextAlignment(.center)
            VStack (spacing: 24){
                Button (action: {}) {
                    ZStack{
                        Capsule()
                            .fill(Color("Purple"))
                            .frame(height: 128)
                            .animation(Animation.timingCurve(0.68, -0.6, 0.32, 1.6).speed(0.2).repeatForever(autoreverses: true))
                            .task {
                                rotate = 400
                                drawErase = 1
                            }
                        Image("Vector")
                            .font(.system(size: 80))
                            .rotationEffect(.degrees(Double(rotate)))
                            .animation(Animation.timingCurve(0.68, -0.6, 0.32, 1.6).speed(0.2).repeatForever(autoreverses: true))
                    }
                    .padding(.horizontal, 24)
                    
                }
                
            }
            .padding(.top, 150)
            Spacer()
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                showAppChoice = true
            }
        }
    }
}

struct Screen4_Previews: PreviewProvider {
    static var previews: some View {
        Screen4(choice: " ")
    }
}
