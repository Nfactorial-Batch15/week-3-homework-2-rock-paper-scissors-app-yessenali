//
//  Screen1.swift
//  RockPaperScissors
//
//  Created by Yessenali Zhanaidar on 16.12.2021.
//

import SwiftUI

struct Screen1: View {
    var body: some View {
        
        NavigationView{
            
            ZStack{
                Image("BackgroundImage")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center, spacing: 0){
                    Text("Welcome to the game!")
                        .font(.system(size: 54))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 92)
                    Spacer()
                    
                    NavigationLink(destination: Screen2(),
                                   label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("Violet"))
                            Text("Single player")
                                .foregroundColor(.white)
                        }.frame(height: 50)
                    })
                    
                    
                    NavigationLink(destination: ScreenTwoMulti(),
                                   label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(Color("Violet"))
                            Text("Multi player")
                                .foregroundColor(.white)
                        }.frame(height: 50)
                        
                    }).padding(.top,10)
                        .padding(.bottom, 40)
                    
                }
                .padding(.horizontal)
                .edgesIgnoringSafeArea(.all)
            }
            
        }
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}
