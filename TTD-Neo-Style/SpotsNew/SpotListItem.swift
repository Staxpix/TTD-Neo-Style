//
//  SpotListItem.swift
//  TTD-1.0
//
//  Created by Daniel Enning on 26.05.21.
//

import SwiftUI

struct SpotListItem: View {
    
    let spots: Spots
    
    var body: some View {

        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        
        VStack {
            Text(spots.headline)
                .font(.title3)
                .fontWeight(.medium)
               
                
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
                .padding(12)
                .background(Color("Background2"))
                    .cornerRadius(25)
                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                .padding(.top, 12)
                
            
            HStack(alignment: .center, spacing: 16) {
                Image(spots.image)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(25)
                    .frame(maxWidth: 250)
                    .padding(8)
                    .background(Color("Background2"))
                        .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding()
                
                VStack(alignment: .center, spacing: 12) {
                    
                    
                    VStack {
                    Text(spots.disciplin)
                        .font(.footnote)
                        .fontWeight(.medium)
                        
                        
                        .multilineTextAlignment(.center)
                        .padding(12)
                        .background(Color("Background2"))
                            .cornerRadius(25)
                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    
                    Text(spots.shortInfo)
                        .font(.footnote)
                        
                        .multilineTextAlignment(.leading)
                        .lineLimit(4)
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(12)
                        .background(Color("Background2"))
                            .cornerRadius(25)
                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                        .padding(4)
                    }
                    
                } // VStack
                .padding(.trailing, 8)
                
            } // HStack
            
            
        }
        
        .background(Color("Background2"))
        .cornerRadius(25)
        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
        .frame(minWidth: 350, maxWidth: 600)
        
    }


    }
}

struct SpotListItem_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotStartListItem(spots: spots[1])
            .previewLayout(.sizeThatFits)
    }
}
