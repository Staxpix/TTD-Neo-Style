//
//  VideoPlayerList.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 12.09.21.
//

import SwiftUI

struct VideoPlayerList: View {
    
    let videos : [VideoWorkouts] = Bundle.main.decode("VideoWorkouts.json")
    
    
    var body: some View {
        NavigationView {
//            List {
            ZStack {
                
                Rectangle()
                    .fill(Color("Background2"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                
                Link(destination: URL(string: "https://youtu.be/Q1nuMlgutNk")!, label: {
                    Text("Variante YouTube")
                        .padding()
                        
                        .background(Color("Background2"))
                        .cornerRadius(25)
                        
                        
                        .shadow(color: Color("LightShadow2"), radius: 4, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                }).padding(.top, 22)
                
                ForEach(videos) { videos in
                    
                    VStack(spacing: 20){
                    
                    NavigationLink(destination: VideoPlayerWorkout(link: videos.link))
                        {
                            Text(videos.title)
                                .padding(24)
                                
                                .background(Color("Background2"))
                                .cornerRadius(25)
                                
                                
                                .shadow(color: Color("LightShadow2"), radius: 4, x: -6, y: -6)
                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                        }
                        .buttonStyle(FlatLinkStyle())
                        
                }.padding(34)
    //            }.listStyle(PlainListStyle())
                        
                }
                
                
                .navigationBarTitleDisplayMode(.inline)
                
                .toolbar {
                            ToolbarItem(placement: .principal) {
                                VStack {
                                    Text("TTD Video-Workouts").font(.headline)
                                  
                                }
                            }
                        }
               
            }.padding()
        }
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct VideoPlayerList_Previews: PreviewProvider {
    static var previews: some View {
        VideoPlayerList()
    }
}

