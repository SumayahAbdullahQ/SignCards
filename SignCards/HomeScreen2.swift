//
//  HomeScreen2.swift
//  SignCards
//
//  Created by Walaa on 30/09/2024.
//

import SwiftUI

struct HomeScreen2: View {
    var body: some View {
        
        
        HStack {
            
            
            Button{ }
            label:{
              
                Image(systemName: "star")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
                    .frame(maxWidth: .infinity, alignment: .topTrailing)
                    .alignmentGuide(.trailing, computeValue: { $0[.trailing] })
                            }
            
        }
        
        VStack {
                 
                
                Text("Hello Sara!")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
            
                

            
                 
             }
        Spacer()

         
           
            
        }
        
    }


   

#Preview {
    HomeScreen2()
}
