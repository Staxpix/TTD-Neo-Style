//
//  SportMeoView.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 13.08.21.
//

import SwiftUI

struct SportMeoView: View {
    var body: some View {
        HStack {
            
           
            
            
            
            Link("Anmeldung zu unseren Training mit SportMeo", destination: URL(string: "https://triteamduesseldorf.sportmeo.com/dates")!)
                .padding(22)
            
        
        }
        .frame(maxWidth: 700)
        .padding(22)
        .background(Color("Background2"))
        .cornerRadius(25)
        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
    }
}

struct SportMeoView_Previews: PreviewProvider {
    static var previews: some View {
        SportMeoView()
    }
}
