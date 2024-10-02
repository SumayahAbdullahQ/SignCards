//
//  LogIn.swift
//  SignCards
//
//  Created by hussah alqusi on 29/03/1446 AH.
//

import SwiftUI

struct LogIn: View {
    var body: some View {
        @State  var name: String = ""
        VStack {
            Text("Waht is your name ?")
                .font(.headline)
                .padding()
            TextField("Neme", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button(action: {}) {
                           Text("Submit")
                               .font(.headline)
                               .padding()
                               .background(Color.white)
                               .foregroundColor(.blue)
                               .cornerRadius(8)
                       }
                          
                        
                .padding()
        }
    }
}

#Preview {
    LogIn()
}
