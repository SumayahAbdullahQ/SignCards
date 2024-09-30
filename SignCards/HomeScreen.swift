//
//  HomeScreen.swift
//  SignCards
//
//  Created by Sumayah Alqahtani on 26/03/1446 AH.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack{
            Image(.singCardsLogo2)
                .resizable()
                .frame(width: 200,height:200)
            Text("SingCards")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(
                    LinearGradient(
                        colors: [Color("logo color"), .color2],
                        startPoint: .top,
                        endPoint: .bottom
                        
                    )
                )
            Image(.white)
            Image(.move)
            
        }
    }
    
}

#Preview {
    HomeScreen()
}
