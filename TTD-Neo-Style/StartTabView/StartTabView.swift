//
//  StartTabView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 10.04.21.
//

import SwiftUI

struct StartTabView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("Background2"))
       }
    
    
    
    var body: some View {
        
        
        
        TabView {
            
            Group {
                HomeScreen()
                    .tabItem { VStack {
                        Image(systemName: "house.fill")
                        Text("Home")
                    } }

                NewsListLazy()
                    .tabItem { VStack {
                        Image(systemName: "newspaper.fill")
                        Text("News")
                    } }

                

                
                LazyTrainingOverview()
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("Trainingszeiten")
                    }

                SpotStart()
                    .tabItem { VStack {
                        Image(systemName: "paperplane.circle.fill")
                        Text("Spots")
                    } }
                
            
                
                SpotsMapViewLinks()
                    .tabItem { VStack {
                        Image(systemName: "mappin.circle.fill")
                        Text("Spots Map")
                    } }
                
                SportMeoIntegratedView()
                    .tabItem {
                        VStack {
                            Image(systemName: "play.fill")
                            Text("Anmeldung Trainings")
                        }
                    }
                
                
                
                RandomWorkout2()
                    .tabItem {
                        VStack {
                            Image(systemName: "chart.bar.doc.horizontal.fill")
                            Text("TTD-Workouts")
                        }
                    }
                
                FAQ()
                    .tabItem {
                        VStack {
                            Image(systemName: "questionmark.circle.fill")
                            Text("FAQs")
                        }
                    }
                
                PersonsViewFlipOverview()
                    .tabItem { VStack {
                        Image(systemName: "person.fill")
                        Text("Das Team")
                    } }
                
                Touren()
                    .tabItem { VStack {
                        Image(systemName: "mappin.circle.fill")
                        Text("Touren")
                    } }
            }
            
            SocialMediaView()
                .tabItem { VStack {
                    Image(systemName: "text.bubble.fill")
                    Text("Social Media")
                } }
            
           
            VideoPlayerList()
                .tabItem { VStack {
                    Image(systemName: "video.fill")
                    Text("Video-Workouts")
                } }
            
            SponsorOverview()
                .tabItem { VStack {
                    Image(systemName: "heart.fill")
                    Text("Partner und Sponsoren")
                } }
           
            
            
            
//            PenilKit1()
//                .tabItem { VStack {
//                    Image(systemName: "pencil.circle.fill")
//                    Text("Notizen")
//                } }
//
//            LoginView()
//                .tabItem { VStack {
//                    Image(systemName: "pencil.circle.fill")
//                    Text("Planner")
//                } }
//
//            test1()
//                .tabItem { VStack {
//                    Image(systemName: "calendar.circle.fill")
//                    Text("Trainingszeiten")
//                } }
//
//            test1()
//                .tabItem { VStack {
//                    Image(systemName: "note.text")
//                    Text("Notizen")
//                } }
        }
        
        .accentColor(.black)
    }
}

struct StartTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StartTabView()
            StartTabView()
        }
    }
}
