//
//  Touren.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 18.08.21.
//

import SwiftUI

struct Touren: View {
    var body: some View {
        
        
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 28) {
                
                Text("TTD-Routen-Sammlung")
                                    .font(.title3)
                                    .frame(maxWidth: 340)
                                    .multilineTextAlignment(.center)
                                    .padding( 12)
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                                    .padding(.leading, 20)
                                    .padding(.top, 16)
                                    .padding(.bottom, 20)
                
                
                TourenCard(startTour: "Düsseldorf", endTour: "Baldeneysee", distance: "85 km", hm: "317 hm", link: "https://www.strava.com/routes/2725082282499643382", komootLink: "", routingApp: "Strava")
                
                TourenCard(startTour: "Düsseldorf", endTour: "Vollrather Höhe", distance: "88 km", hm: "402 hm", link: "https://www.strava.com/routes/2747513833807141204", komootLink: "", routingApp: "Strava")
                
                TourenCard(startTour: "Düsseldorf", endTour: "Schloss Dyck", distance: "76 km", hm: "185 hm", link: "https://www.strava.com/routes/2727570486421501342", komootLink: "", routingApp: "Strava")
                
                TourenCard(startTour: "Düsseldorf", endTour: "Ruhrtal", distance: "62 km", hm: "340 hm", link: "https://www.strava.com/routes/2733057367857133098", komootLink: "", routingApp: "Strava")
                
                TourenCard(startTour: "Düsseldorf", endTour: "Sender", distance: "95 km", hm: "1300 hm", link: "https://www.strava.com/routes/2733058160621892994", komootLink: "", routingApp: "Strava")
                
                TourenCard(startTour: "Düsseldorf", endTour: "Grefrath", distance: "100 km", hm: "230 hm", link: "https://www.strava.com/routes/2727570486421501342", komootLink: "", routingApp: "Strava")
                
                TourenCard(startTour: "Düsseldorf", endTour: "über Krefeld", distance: "55 km", hm: "110 hm", link: "https://www.komoot.de/tour/335576074", stravaLink: "", komootLink: "", routingApp: "Komoot")
            }
            .padding(22)
        }
    }
    }
}

struct Touren_Previews: PreviewProvider {
    static var previews: some View {
        TourenCard(startTour: "Düsseldorf", endTour: "Baldeneysee", distance: "85 km", hm: "317 hm", stravaLink: "https://www.strava.com/routes/2725082282499643382", komootLink: "")
    }
}

struct TourenCard: View {
    
    var startTour: String = ""
    var endTour: String = ""
    var distance: String = ""
    var hm: String = ""
    var link: String = ""
    var stravaLink: String = ""
    var komootLink: String = ""
    var routingApp: String = ""
    
    var body: some View {
        VStack {
            
            VStack(spacing: 20) {
                
                
                HStack {
                    VStack(alignment: .center, spacing: 8) {
                        
                        
                        Text(startTour)
                        Image(systemName: "arrow.left.arrow.right.square.fill")
                        Text(endTour)
                    }
                    .font(.body.weight(.regular))
                }
                
                
                HStack {
                    VStack(alignment: .center, spacing: 6) {
                        Image(systemName: "info.circle.fill")
                        
                        HStack(spacing: 12) {
                        Text(distance)
                        
                        Text(hm)
                        }
                        .font(.footnote.weight(.thin))
                    }
                }.font(.footnote)
                
                VStack(alignment: .center, spacing: 6) {
                    Image(systemName: "link.circle.fill")
                Link(routingApp, destination: (URL(string: link) ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                }
            }.padding()
            
        }
        .frame(maxWidth: 400)
        .padding()
        .background(Color("Background2"))
        
        .cornerRadius(25)
        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
        .shadow(color: Color("DarkShadow2"), radius: 6, x: 6, y: 6)
    }
}

