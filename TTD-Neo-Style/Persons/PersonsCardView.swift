//
//  PersonsCardView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI



struct PersonsCardView: View {
    
    
    
    let name: String
     let status: String
     let image: String
    
    var screenSize = UIScreen.main.bounds
    
    
    
    var body: some View {
        
        
        
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .cornerRadius(25)
                .frame(maxWidth: 350)

            VStack(alignment: .center ,spacing: 20) {
                Spacer()
                Text(name)
                    .padding()
                    .font(.title2)
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    
                
                Image(image)
                    
                    .resizable()
                    .clipShape(Circle())
                    .scaledToFit()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .padding(12)
                    .background(Color("Background2"))
                    .clipShape(Circle())
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)

                Text(status)
                    .frame(maxWidth: 240)
                    .font(.callout)
                    .padding(12)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding()
                    Spacer()

            }.background(Color("Background2"))
            .cornerRadius(25)
            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
 
        }.frame(width: 310, height: 480, alignment: .center)
    }
}

//struct PersonsCardView_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonsCardView()
//    }
//}
