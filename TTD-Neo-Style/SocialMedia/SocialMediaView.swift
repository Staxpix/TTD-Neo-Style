//
//  SocialMediaView.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 18.08.21.
//

import SwiftUI

struct SocialMediaView: View {
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        
            
            
            
            
            
            VStack(alignment: .center, spacing: 16) {
                
                
            
                
                Spacer()
                
                Image("ttd-logo")
                    .resizable()
                    .scaledToFit()
                    
                    .frame(maxWidth: 100)
                    
                    .background(Color("Background2"))
                    .clipShape(Circle())
                    
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                
                
            
            Link("Instagram", destination: (URL(string: "https://www.instagram.com/triathlonteamduesseldorf/?hl=de") ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                
                Spacer()
                //
                Spacer()
                
                Image("ttd-logo")
                    .resizable()
                    .scaledToFit()
                    
                    .frame(maxWidth: 100)
                    
                    .background(Color("Background2"))
                    .clipShape(Circle())
                    
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                
                
            
            Link("Facebook", destination: (URL(string: "https://www.facebook.com/triathlonteamduesseldorf/") ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                
                
                Spacer()
            }
            
            
            
        }
        
        
        
            
        }// Z
    }


struct SocialMediaView_Previews: PreviewProvider {
    static var previews: some View {
        SocialMediaView()
    }
}
