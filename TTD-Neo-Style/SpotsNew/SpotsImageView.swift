//
//  SpotsImageView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 11.05.21.
//

import SwiftUI

struct SpotsImageView: View {
    
    
    var img : String
    
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        
        Image(img)
            .resizable()
            .scaledToFit()
            .cornerRadius(25)
            .padding(8)
            
            .background(Color("Background2"))
                .cornerRadius(25)
            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
            .padding(22)
        
    }
        
    }
}

//struct SpotsImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        SpotsImageView()
//    }
//}
