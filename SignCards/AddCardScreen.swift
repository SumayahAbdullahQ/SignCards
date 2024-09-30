//
//  AddCardScreen.swift
//  SignCards
//
//  Created by Sumayah Alqahtani on 26/03/1446 AH.
//

import SwiftUI

struct AddCardScreen: View {
    var body: some View {
        VStack{
            HStack{
                Button{ }
            label:{
                Text("Cansel")
                    .padding(.horizontal)
            }
                
                Spacer()
                
                Button{ }
            label:{
                Text("Done")
                    .padding(.horizontal)
            }
            }
            HStack{
                
                Text("New Card")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.vertical, 1)
                    .padding(.horizontal)
                Spacer()
            }
            Rectangle()
                .fill(.white)
                .frame(width: 300, height: 200)
                .border(.gray, width: 1.5)
                .padding()
            HStack(spacing: 10)
            {
                Circle()
                    .fill(.red)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.orange)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.yellow)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.brown)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.gray)
                    .frame(width: 60, height: 60)
            }
            HStack(spacing: 10)
            {
                Circle()
                    .fill(.green)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.mint)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.blue)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.indigo)
                    .frame(width: 60, height: 60)
                Circle()
                    .fill(.purple)
                    .frame(width: 60, height: 60)
            }
            Spacer()
        }
    }
}

#Preview {
    AddCardScreen()
}
