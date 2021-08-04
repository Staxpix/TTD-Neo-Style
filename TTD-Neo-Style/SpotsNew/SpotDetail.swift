//
//  SpotDetail.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 30.04.21.
//

import SwiftUI
import MapKit

struct SpotDetail: View {
    let spots: Spots
    let screenSize = UIScreen.main.bounds
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        
        ScrollView(showsIndicators: false) {
            VStack {
                    
                    VStack {
                        
                        Text(spots.headline)
                            .font(.title)
                        
                            .multilineTextAlignment(.center)
                            
                            .padding()
                            .background(Color("Background2"))
                                .cornerRadius(25)
                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                            .padding(.top, 18)
//                        HStack {
//                            Text(spots.disciplin)
//                            
//                            Text(spots.distance)
//                        }.font(.body)
                        
                    
                        
                        SpotInsetGallery3(spots: spots)
                            .frame(minHeight: 300, maxHeight: 500)
                            
                            
                        NavigationLink(
                            destination: SpotDetailViewMap(coordinates: spots.locationsSpots, spotName: spots.headline),
                            label: {
                                HStack {
                                    
                                    Image(systemName: "map")
                                        .font(.title2)
                                        .padding()
                                        .background(Color("Background2"))
                                        
                                            .cornerRadius(25)
                                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                                        .padding(.top, -20)
                                    
                                } })
                        
                       
                        
                        
//                        Text("Infos")
//
//                            .font(.title2)
//                            .padding()
//
//                            .background(Color("Background2"))
//                                .cornerRadius(25)
//                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
//                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
//                            .padding()
                        
                        
                        Text(spots.text)
                            .lineSpacing(5)
                            .lineLimit(nil)
                            .fixedSize(horizontal: false, vertical: true)
                            
                            .padding(22)
                            .background(Color("Background2"))
                                .cornerRadius(25)
                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                            .padding()
                       
                        VStack {
                            
//                            Text("Short Map")
//                                .font(.title3)
//                                .foregroundColor(.ttdText)
                            
                            SpotDetailViewMapInset(coordinates: spots.locationsSpots, spotName: spots.headline)
                                
                                .frame(height: 300)
                                .cornerRadius(25)
                               
                                .background(Color("Background2"))
                                    .cornerRadius(25)
                                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                                
                                
                        }
                        .padding()
                        .padding(.bottom, 20)
                        
                    }
                    .background(Color("Background2"))
                        .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                        
                    
            }.padding(20)
            .navigationBarTitle("\(spots.headline)", displayMode: .inline)
            .frame(maxWidth: 1000)
        }
    }
            
        
}

struct SpotDetail_Previews: PreviewProvider {
    static let spots : [Spots] = Bundle.main.decode("Spots.json")
    static var previews: some View {
        SpotDetail(spots: spots[0])
    }
}
}
