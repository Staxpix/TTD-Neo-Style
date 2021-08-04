//
//  RandomBikeView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import SwiftUI

struct RandomBikeView: View {
    
    // Array für Auswahl im Picker
    let auswahlBike : [String] = ["Spots", "Sprints", "Race"]
    
    // Variable "Selection" im Picker für "Run"
    @State private var selectedBike = 1
    
    // Variable Temporäre Auswahl zur Übergabe an Button
    var selectedFromPicker : String = ""
    
    // Variable Temporär Random Training "Run"
    @State var randomBikeTempWarmUp : String = ""
    @State var randomBikeTempMain : String = ""
    @State var randomBikeTempCoolDown : String = ""
    
    // Funktion RandomNumber für Auswahl im Array === RUN EASY
    func tempRandomNumberBikeEasy() -> Int {
        let temRanNum = Int.random(in: 0..<allEasyBikes.count)
        return temRanNum }
    
    // Funktion RandomNumber für Auswahl im Array === RUN MEDIUM
    func tempRandomNumberBikeMedium() -> Int {
        let temRanNum = Int.random(in: 0..<allMediumBikes.count)
        return temRanNum }
    
    // Funktion RandomNumber für Auswahl im Array === RUN HARD
    func tempRandomNumberBikeHard() -> Int {
        let temRanNum = Int.random(in: 0..<allHardBikes.count)
        return temRanNum }
     
    var body: some View {
        
        
        
        VStack {
            VStack(spacing: 10) {
                
                Text("Bike-Training")
                    .font(.title2)
                    
                    .padding()
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding(.top, 18)
                    .padding(.bottom, 18)
                
                Picker(selection: $selectedBike, label: Text("Picker"), content: {
                    ForEach(0..<auswahlBike.count) {
                        Text(auswahlBike[$0])
                    }
                }).padding(8)
                .background(Color("Background2"))
                .cornerRadius(25)
                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                .padding(.bottom)
                
                //                    Text("\(auswahlRun[selectedRun])")
                
                let selectedFromPicker = auswahlBike[selectedBike]
                
                Button(action: {
                    
                    if selectedFromPicker == "Spots" {
                        let temRanNum = tempRandomNumberBikeEasy()
                        randomBikeTempWarmUp = "\(allEasyBikes[temRanNum].warmUp)"
                        randomBikeTempMain = "\(allEasyBikes[temRanNum].main)"
                        randomBikeTempCoolDown = "\(allEasyBikes[temRanNum].coolDown)"
                        
                    } else if selectedFromPicker == "Sprints" {
                        let temRanNum = tempRandomNumberBikeMedium()
                        randomBikeTempWarmUp = "\(allMediumBikes[temRanNum].warmUp)"
                        randomBikeTempMain = "\(allMediumBikes[temRanNum].main)"
                        randomBikeTempCoolDown = "\(allMediumBikes[temRanNum].coolDown)"
                    } else if selectedFromPicker == "Race" {
                        let temRanNum = tempRandomNumberBikeHard()
                        randomBikeTempWarmUp = "\(allHardBikes[temRanNum].warmUp)"
                        randomBikeTempMain = "\(allHardBikes[temRanNum].main)"
                        randomBikeTempCoolDown = "\(allHardBikes[temRanNum].coolDown)"
                    }
                    
                }, label: {
                    HStack {
                        Image("ttd-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60, alignment: .center)
                        Text("Training erstellen")
                            .font(.body)
                            .bold()
                            .padding(.horizontal)
                            .multilineTextAlignment(.center)
                        Image("ttd-logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60, alignment: .center)
                        
                    }.frame(width: 280, height: 80, alignment: .center)
                    .padding(2)
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                })
                
                VStack(alignment: .center, spacing: 22) {
                    
                    ScrollView(showsIndicators: false) {
                        VStack(alignment: .center){
                            
                            VStack(alignment: .center, spacing: 40){
                                VStack(spacing: 6){
                                    Text("Warm-Up:")
                                        .bold()
                                    Text("\(randomBikeTempWarmUp)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                                
                                VStack(spacing: 6){
                                    Text("Main:")
                                        .bold()
                                    Text("\(randomBikeTempMain)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                                
                                
                                VStack(spacing: 6){
                                    Text("Cool-Down:")
                                        .bold()
                                    Text("\(randomBikeTempCoolDown)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                            }.fixedSize(horizontal: false, vertical: true)
                        }.frame(width: 300, alignment: .center)
                        .animation(.interactiveSpring(response: 1, dampingFraction: 1, blendDuration: 3))
                    }.frame(width: 300, height: 240, alignment: .center)
                }
                .padding(50)
                .font(.callout)
                
                .multilineTextAlignment(.leading)
                .frame(width: 310, height: 300, alignment: .center)
                .background(Color("Background2"))
                .cornerRadius(25)
                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                .padding(22)
                
                Text("Viel Spaß!")
                    .bold()
                    .padding(18)
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    
                
                DisclosureGroup(
                    content: { Text("Die %-Werte beziehen sich hier auf euren FTP-Wert. Wer den noch nie berechnet hat. Am besten auf der Rolle. Einfahren und dann 20 Minuten all out. Den Watt-Schnitt dieser 20 Minuten x 0.95 = Euer FTP-Wert.")
                        .font(.footnote)
                        .padding()
                    },
                    label: { Text("Info") }
                ).padding(.horizontal)
                .padding(.bottom, 14)
                .frame(width: 280, alignment: .center)
            }
            
          
            
            
            
            
            
            
        } // 1. VStack
        .background(Color("Background2"))
        .cornerRadius(25)
        .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
        .padding(40)
        .padding(.leading, 25)
    }
}

struct RandomBikeView_Previews: PreviewProvider {
    static var previews: some View {
        RandomBikeView()
    }
}
