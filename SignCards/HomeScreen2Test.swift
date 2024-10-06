//
//  HomeScreen2Test.swift
//  SignCards
//
//  Created by Walaa on 03/10/2024.
//

import SwiftUI

struct HomeScreen2Test: View {
    
    let iconSizeSearch : CGFloat = 24
    @State var hasNavigation : Bool
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        
        HStack {
            Button(action: {
                self.mode.animation().wrappedValue.dismiss()
            }) {
                Image(hasNavigation ? "back" : "filter")
                    .resizable()
                    .scaledToFit()
                    .isFilter(hasNavigation)
            }.buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Image("cart")
                .resizable()
                .frame(width: iconSizeSearch, height: iconSizeSearch,alignment:.trailing)
                .scaledToFit()
            
        }.padding(16)
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            HomeScreen2Test(hasNavigation: true)
            HomeScreen2Test(hasNavigation: false)
        }.previewLayout(.fixed(width: 300, height: 56))
        
    }
}

extension View {
    
    //to make the icon size different for the filter icon
    func isFilter(_ hasNavigation: Bool)-> some View {
        if hasNavigation {
            return frame(width: 24, height: 22, alignment:.leading)
        }else{
            return frame(width: 24, height: 17, alignment:.leading)
        }
        
        #Preview {
            HomeScreen2Test(hasNavigation: <#Bool#>)
        }
    }
}
