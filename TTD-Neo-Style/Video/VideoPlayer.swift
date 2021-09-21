//
//  VideoPlayer.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 12.09.21.
//

import SwiftUI
import AVKit

struct VideoPlayerWorkout: View {
    
    var link: String
    let size = UIScreen.main.bounds.size
    
    private let player = AVPlayer(url: URL(string: "https://gravelventure.de/01.mp4")!)
    
    var body: some View {

        NavigationView {
        
//        ScrollView(.horizontal) {
//            HStack(spacing: 30) {
            
                
                
//        VideoPlayer(player: AVPlayer(url:  URL(string: link)!))
//                            .onAppear() {
//                                // Start the player going, otherwise controls don't appear
//                                player.play()
//                            }
//                            .onDisappear() {
//                                // Stop the player when the view disappears
//                                player.pause()
//                            }
        
        
        VideoPlayer(player: AVPlayer(url:  URL(string: link)!))
            .frame(width: size.width * 0.8, height: size.height * 0.4)
                    .padding(24)
                    
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    
                    
                    .shadow(color: Color("LightShadow2"), radius: 4, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                
                
                
        }.navigationViewStyle(StackNavigationViewStyle())
                
                
                
                
                
                
//
//
//
//                VideoPlayer(player: AVPlayer(url:  URL(string: "https://gravelventure.de/ttd01.mp4")!)) {
//                    VStack {
//                        Text("TTD Workout")
//                            .foregroundColor(.black)
//                            .background(Color.white.opacity(0.7))
//                        Spacer()
//                    }
//                    .padding()
//                    .frame(width: 350, height: 300)
//                }
//                .frame(width: 350, height: 300)
//                .padding(24)
//
//                .background(Color("Background2"))
//                .cornerRadius(25)
//
//
//                .shadow(color: Color("LightShadow2"), radius: 4, x: -6, y: -6)
//                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
//
//
//
//
                
                
                
            
            
//            }.padding(40)
//        }
//
        
        

    }
}


