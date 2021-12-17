//
//  ScreenFourMulti.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct ScreenFourMulti: View {
    
    
    var choice: String
    var choice2: String
    
    var body: some View {
        VStack(spacing: 0){
            Text("Pass the phone to your opponent")
                .font(.system(size: 54))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding(.top, 120)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            Spacer()
            
            NavigationLink(destination: ScreenFiveMulti(choice: self.choice, choice2: self.choice2),
                    label: {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundColor(Color("Violet"))
                    Text("Ready to continue")
                        .foregroundColor(.white)
                }.frame(height: 50)
            }).padding(.bottom, 40)
        }
        .padding(.horizontal)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle(" ")
    }
}

struct ScreenFourMulti_Previews: PreviewProvider {
    static var previews: some View {
        ScreenFourMulti(choice: " ", choice2: " ")
    }
}
