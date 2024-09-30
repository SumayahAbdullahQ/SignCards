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
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(.gray, lineWidth: 1)
                .frame(width: 300, height: 200)
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
                Button(action: {}) {
                    Circle()
                        .fill(.green)
                    .frame(width: 60, height: 60)}
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
            .padding()
            
                HStack{
                    Button(action: {}) {
                        Text("Folder")
                            .padding(.horizontal)
                    }
                    Spacer()
                    Button(action: {}) {
                        Text(">")
                            .padding(.horizontal)
                    }
                    
                }
            }
            Spacer()
            
        }
    
    }

#Preview {
    AddCardScreen()
}
