//
//  FAQDisGroupView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 14.05.21.
//

import SwiftUI



struct FAQDisGroupView: View {
    var textLabel: String
    var textContent: String
    var linkFAQText: String
    var linkFAQ : String
    var body: some View {
        DisclosureGroup(
            content: {
                
                VStack(spacing: 20) {
                    Text(textContent)
                        .padding()
                        .background(Color("Background2"))
                        
                            .cornerRadius(25)
                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 6, y: 6)
                        
                    
                    if linkFAQText != "" {
                        Link(linkFAQText, destination: (URL(string: linkFAQ) ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
                            .padding()
                            .background(Color("Background2"))
                            
                                .cornerRadius(25)
                            .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                            .shadow(color: Color("DarkShadow2"), radius: 6, x: 6, y: 6)
                            } else {
                                Text("")
                            }
                    
//                    Link(linkFAQText, destination: (URL(string: linkFAQ) ?? URL(string: "https://triathlon-team-duesseldorf.com"))!)
//                        .padding()
//                        .background(Color("Background2"))
//
//                            .cornerRadius(25)
//                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
//                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
//
                    
                }.padding(20)
                
                
            },
            label:
                
                {
                
                    Text(textLabel)
                .padding(20)
                        .padding(.horizontal, 30)
                        .padding()
                        .background(Color("Background2"))
                        
                            .cornerRadius(25)
                        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8) }
        ).multilineTextAlignment(.leading)
        .padding(.horizontal, 30)
        .listStyle(InsetListStyle())
    }
}

struct FAQDisGroupView_Previews: PreviewProvider {
    static var previews: some View {
        FAQDisGroupView(textLabel: "String", textContent: "String", linkFAQText: "String", linkFAQ: "fda")
    }
}
