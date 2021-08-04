//
//  PersonsCardBackView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.04.21.
//

import SwiftUI

struct PersonsCardBackView: View {
    
    let name: String
     let description: String
     let image: String
    
    var screenSize = UIScreen.main.bounds
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .cornerRadius(25)
                .frame(maxWidth: 350)

            VStack(alignment: .center ,spacing: 15) {
                
                Text(name)
                    
                    .font(.title2)
                    .padding()
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding()
                
                Image(image)
                    
                    .resizable()
                    
                    .clipShape(Circle())
                    .scaledToFit()
                    
                    .frame(maxWidth: 150, maxHeight: 150)
                    .padding(8)
                    .background(Color("Background2"))
                    .clipShape(Circle())
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    
                    
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )
                    

                
                
                Text(description)
                    .frame(width: 240, height: 200, alignment: .center)
                    .font(.footnote)
                    .padding(12)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0)
                        
                        )
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding()
                


            }.frame(width: 340, height: 520, alignment: .center)
            .background(Color("Background2"))
            .cornerRadius(25)
            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
            
 
        }.frame(width: 360, height: 560, alignment: .center)
        .padding()
    }
}

struct PersonsCardBackView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsCardBackView(name: "jfdkal kfdaö", description: "Langjähriges Mitglied, Coach und mit Erfahrungen aus allen Formaten gesegnet. Im übrigen toller Motivator, so bekommen TTD'ler vor großen  Wettkämpfen gerne nochmal eine WhatsApp mit besten Wünschen.", image: "oli")
    }
}
