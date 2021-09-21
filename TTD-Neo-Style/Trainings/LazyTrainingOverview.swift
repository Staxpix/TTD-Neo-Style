//
//  LazyTrainingOverview.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 28.04.21.
//

import SwiftUI

struct LazyTrainingOverview: View {
    
    private let gridItems = [GridItem(.flexible(minimum: 380, maximum: 380))]
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Rectangle()
                    .fill(Color("Background2"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
            VStack {
                
                
                ScrollView(showsIndicators : false) {
                    VStack(spacing: -40) {
                        Text("Überblick über unsere Trainingszeiten und Locations")
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
                        
                        ScrollView(.horizontal, showsIndicators : false) {
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Swim")
                                        
                                        .font(.title2)
                                        .padding(.bottom, 10)
                                }
                                .background(Color("Background2"))
                                .cornerRadius(25)
                                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
            .padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Montag", uhrzeit: "20 - 21:45", ort: "Rheinbad 50", detail: "Leistungssport, Fortgeschrittene, Breitensportler & Einsteiger")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Mittwoch", uhrzeit: "20 - 21:45", ort: "Rheinbad 50", detail: "Leistungssport, Fortgeschrittene & Breitensportler")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Freitag", uhrzeit: "19:45 - 21:30", ort: "Rheinbad 50", detail: "Leistungssport, Fortgeschrittene, Breitensportler & Einsteiger")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Samstag", uhrzeit: "17 - 18", ort: "Rheinbad 33", detail: "Aktuell NICHT angeboten. Technikschwerpunkt.")
                                    
                                    TrainingCardFlipRheinbadMap(tag: "Montag - Freitag", uhrzeit: "Jederzeit", ort: "Alle Bäder DUS", detail: "Unter Vorlage des TTD Ausweis, gültig bis zum 30.09.2021, Erwachsene: 1,50 €, Kinder 1,00 €")
                                    
                                })
                            }
                        }
                        Divider()
                            .padding()
                        ////
                        
                        ScrollView(.horizontal, showsIndicators : false) {
                            
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Run")
                                        
                                        .font(.title2)
                                        .padding(.bottom, 10)
                                }
                                .background(Color("Background2"))
                                .cornerRadius(25)
                                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
            .padding(.leading)
                                
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    //TrainingCardFlipTHBMap(tag: "Montag", uhrzeit: "15 - 20", ort: "Theodor-Heuss Brücke", detail: "1.5h GA1 in der Gruppe mit Lauf-ABC")
                                    
                                    TrainingCardFlipASPMap(tag: "Dienstag", uhrzeit: "18:30 - 20", ort: "Arena Sportpark", detail: "Intervall/Athletik (10Km >45Min.)")
                                    
                                    TrainingCardFlipASPMap(tag: "Dienstag", uhrzeit: "18:30 - 20", ort: "Arena Sportpark", detail: "Intervall/Athletik (10Km <45Min.)")
                                    
                                    TrainingCardFlipASPMap(tag: "Samstag", uhrzeit: "15:30 - 16:30", ort: "Arena Sportpark", detail: "Intervall/Athletik (zusammen mit den TRI-Kids)")
                                    

                                    
                                })
                            }
                            
                            
                        }
                        Divider()
                            .padding()
                        ////
                        
                        ScrollView(.horizontal, showsIndicators : false) {
                            
                            HStack {
                                VStack {
                                    Image("ttd-logo")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 100)
                                        
                                    
                                    Text("Bike")
                                        
                                        .font(.title2)
                                        .padding(.bottom, 10)
                                }.background(Color("Background2"))
                                .cornerRadius(25)
                                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
            .padding(.leading)
                                
                                
                                LazyHGrid(rows: gridItems, spacing: 0, content: {
                                    
                                    TrainingCardFlipTHBMap(tag: "Sonntag", uhrzeit: "9 Uhr", ort: "Theodor-Heuss Brücke", detail: "Leistungssport & Fortgeschrittene – Bei starker Nässe und unter 5 C° entfällt das Angebot.")
                                    
                                    TrainingCardFlipTHBMap(tag: "Sonntag", uhrzeit: "10 Uhr", ort: "Theodor-Heuss Brücke", detail: "Fortgeschrittene, Breitensportler & Einsteiger – Bei starker Nässe und unter 5 C° entfällt das Angebot.")
                                    
                                    
                                    
                                })
                            }
                            
                            
                        }
                        
                    }
                }
                .navigationBarTitle("TTD Training")
                .navigationBarTitleDisplayMode(.inline)
                
                
                
                
            }
        }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct LazyTrainingOverview_Previews: PreviewProvider {
    static var previews: some View {
        LazyTrainingOverview()
    }
}
