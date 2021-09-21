//
//  NewsGalleryInset.swift
////  TTD-Neo-Style
////
////  Created by Daniel Enning on 12.09.21.
////
//
//import SwiftUI
//
//struct NewsGalleryInset: View {
//    
//    let news : NewsOnline
//    
//    var body: some View {
//        
//        
//        ScrollView(.horizontal, showsIndicators: false) {
//            
//            HStack(alignment: .center, spacing: 30) {
//                
//                
//                ForEach(news.gallery, id: \.self) { item in
//                    
//                    
//                    NavigationLink(
//                        destination: SpotsImageView(img: item),
//                        label: {
//                            Image(item)
//                                .resizable()
//                                .scaledToFit()
//                                .frame(height: 200)
//                                .cornerRadius(12)
//                                .padding(8)
//                                .background(Color("Background2"))
//                                    .cornerRadius(25)
//                                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
//                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
//                                .padding(.vertical,30)
//                        }).buttonStyle(FlatLinkStyle())
//                    
//                            
//                                
//                        }
//                
//                
//                
//                } // Loop
//            } // HStack
//        
//    }
//}
//
