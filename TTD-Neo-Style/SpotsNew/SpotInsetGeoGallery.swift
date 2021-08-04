//
//  SpotInsetGeoGallery.swift
//  TTD-1.0
//
//  Created by Daniel Enning on 26.05.21.
//

import SwiftUI

struct SpotInsetGeoGallery: View {
    
    let spots: Spots
    
    var body: some View {
        
        GeometryReader { fullView in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(spots.gallery, id: \.self) { item in
                        
                        GeometryReader { geo in
                            
                            
                            
                            NavigationLink(
                                destination: SpotsImageView(img: item),
                                label: {
                                    Image(item)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 300)
                                        .cornerRadius(25)
                                        .rotation3DEffect(
                                            .degrees(-Double(geo.frame(in:.global).midX - fullView.size.width / 2) / 10),
                                            axis: (x: 0.0, y: 0.8, z: 0.0)
                                        )
                                        
                                        .background(Color("Background2"))
                                            .cornerRadius(25)
                                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                                        
                                })
                                .padding(.vertical)
                                
                                .buttonStyle(FlatLinkStyle())
                            
                            
                            
                            
                            
                            
                            
                            
                                        
                                
                            
                        }.frame(width: 300)
                        
                    }
                    
                }
                .padding(.horizontal, (fullView.size.width - 300) / 2)
                .padding(.top)
            }
            
        }.edgesIgnoringSafeArea(.all)
        
        
    }
}

struct SpotInsetGeoGallery_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotInsetGeoGallery(spots: spots[0])
    }
}

