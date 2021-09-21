//
//  SponsorOverview.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 20.09.21.
//

import SwiftUI

struct SponsorOverview: View {
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        
            
            
            
            ScrollView(showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 26) {
                
                Text("Unsere Partner und Sponsoren")
                                    .font(.title3)
                                    .frame(maxWidth: 300)
                                    .multilineTextAlignment(.center)
                                    .padding( 12)
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding(.top, 22)
                    .padding(.trailing, 22)
                
               
                
                Image("tk")
                    .resizable()
                    .scaledToFit()
                    
                    .frame(maxWidth: 200)
                    
                    .padding()

                    .background(Color("Background2"))
                    .cornerRadius(25)
                    
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                
                
            
            Link("TK - Die Techniker", destination: (URL(string: "https://www.tk.de/techniker?aid=btq") ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                
              
                
                Image("am")
                    .resizable()
                    .scaledToFit()
                    
                    .frame(maxWidth: 200)
                    .padding()

                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding()
                
                
            
            Link("Adeline Morlon", destination: (URL(string: "https://www.adelinemorlon.de") ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                
                
              
                
                Image("br")
                    .resizable()
                    .scaledToFit()
                    
                    .frame(maxWidth: 200)
                    .padding()

                    .background(Color("Background2"))
                    .cornerRadius(25)
                    
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                
                
            
            Link("Bioracer", destination: (URL(string: "https://www.bioracer.de/de/") ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                
                
                
                Image("sf")
                    .resizable()
                    .scaledToFit()
                    
                    .frame(maxWidth: 200)
                    .padding()
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                
                
            
            Link("Skinfit Shop Köln", destination: (URL(string: "https://www.skinfit.eu/en/en/") ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                
                
            }
            }.padding()
            
            
        }
        
        
        
            
        }// Z
}

struct SponsorOverview_Previews: PreviewProvider {
    static var previews: some View {
        SponsorOverview()
    }
}
