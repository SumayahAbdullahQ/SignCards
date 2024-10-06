//
//  HmeScreenTest.swift
//  SignCards
//
//  Created by Walaa on 03/10/2024.
//

import SwiftUI

struct FolderScreen: View {
    @State private var searchText = ""
    @State private var emojiText1 = "🍎"
    @State private var emojiText2 = "👔"
    @State private var emojiText3 = "❓"
    @State private var emojiText4 = "🩺"
    @State private var fontSize: CGFloat = 65
// Default font size

    var body: some View {
        NavigationView {
            VStack {
                // Top Left Title and Button
                HStack {
                    Text("")
                        .font(.largeTitle)
                        .padding()
                    
                    Spacer()
                    
                    Button(action: {
                        // Action for the button
                    }) {
                        Image(systemName: "star")
                    }
                    .padding()
                }
                
                // Big Bold Title
                Text("My Folders")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Spacer()
                
                // Editable squares
                VStack(spacing: 20) {
                    HStack(spacing: 20) {
                        EditableColorSquare(color: Color(hex: "#F1D0E2")!, text: $emojiText1, fontSize: $fontSize)
                        EditableColorSquare(color: Color(hex: "#F4F0CE")!, text: $emojiText2, fontSize: $fontSize)
                    }
                    HStack(spacing: 20) {
                        EditableColorSquare(color: Color(hex: "#CCEFD9")!, text: $emojiText3, fontSize: $fontSize)
                        EditableColorSquare(color: Color(hex: "#D3F4F6")!, text: $emojiText4, fontSize: $fontSize)
                    }
                }
                .padding()
                
                // Font size adjustment

                .padding()
                
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct EditableColorSquare: View {
    var color: Color
    @Binding var text: String
    @Binding var fontSize: CGFloat

    var body: some View {
        TextField("", text: $text)
            .font(.system(size: fontSize))
            .foregroundColor(.black)
            .frame(width: 150, height: 150)
            .multilineTextAlignment(.center)
            .background(color)
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .padding()
    }
}

// Extension to convert hex to Color
extension Color {
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if hexSanitized.hasPrefix("#") {
            hexSanitized.removeFirst()
        }
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}





    

#Preview {
    FolderScreen()
}
