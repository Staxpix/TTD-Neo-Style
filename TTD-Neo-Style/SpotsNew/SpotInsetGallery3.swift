//
//  SpotInsetGallery3.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 12.05.21.
//

import SwiftUI

struct SpotInsetGallery3: View {
    
    let spots: Spots
    
    struct FlatLinkStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
        }
    }
    
    var body: some View {
        
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(alignment: .center, spacing: 30) {
                
                
                ForEach(spots.gallery, id: \.self) { item in
                    
                    
                    NavigationLink(
                        destination: SpotsImageView(img: item),
                        label: {
                            Image(item)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .cornerRadius(12)
                                .padding(8)
                                .background(Color("Background2"))
                                    .cornerRadius(25)
                                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                                .padding(.vertical,30)
                        }).buttonStyle(FlatLinkStyle())
                    
                            
                                
                        }
                
                
                
                } // Loop
            } // HStack
        } // Scroll
        
    }


struct SpotInsetGallery3_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotInsetGallery3(spots: spots[0])
    }
}
