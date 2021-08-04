//
//  NewsListGeoDetail.swift
//  TTD-1.0
//
//  Created by Daniel Enning on 26.05.21.
//

import SwiftUI

struct NewsListGeoDetail: View {
    var headline: String
    var date: String
    var autor: String
    var image: String
    var textPreview: String
    var text: String
    var introTextLink: String
    var linkHomepage: String
    
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        ScrollView(showsIndicators: false) {
            Group {
                VStack {
                    
                    VStack {
                        Text(headline)
                            .font(.title3)
                            
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding()
                            .background(Color("Background2"))
                            .cornerRadius(25)
                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                            .padding()
                        
                        Image(uiImage: image.load())
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(25)
                            .padding(10)
                            .background(Color("Background2"))
                            .cornerRadius(25)
                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                            .padding()
                            
                            
                            
                        
                        HStack {
                            Text(autor)
                            Text(date)
                        }
                        .font(.footnote)
                        .padding()
                        .background(Color("Background2"))
                        .cornerRadius(25)
                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                        .padding()
                        
                        Divider()
                            .padding(.horizontal)
                        
                        Text(text)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.body)
                            .lineSpacing(10)
                            .padding(22)
                            .background(Color("Background2"))
                            .cornerRadius(25)
                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                            .padding()
                        
                        
                        if introTextLink != "" {
                            Text(introTextLink)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.body)
                                .lineSpacing(10)
                                .padding(12)
                                .background(Color("Background2"))
                                .cornerRadius(25)
                                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                                .padding()
                            
                        } else {
                            Text("")
                        }
                        
                        
                        
                        
                        HStack {
                            
                            Image(systemName: "link")
                                .font(.headline)
                            
                            
                            
                            Link("TTD Homepage", destination: (URL(string: linkHomepage) ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                            
                        
                        }
                        .padding(22)
                        .background(Color("Background2"))
                        .cornerRadius(25)
                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                        
                        
                        
                        Image("ttd-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .center)
                            
                            .background(Color("Background2"))
                            .cornerRadius(180)
                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                            .padding()
                            .padding(.bottom, 20)
                            
                    }
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding()
                    
                    
                        
                }
            }// Group
            .frame(maxWidth: 700)
//            .background(Color("Background2"))
//            .cornerRadius(25)
//            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
//            .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
//            .padding(30)
            
            
        }.frame(maxWidth: 750)
    }
    }
}

