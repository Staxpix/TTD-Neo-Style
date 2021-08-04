//
//  RandomSwimView.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import SwiftUI

struct RandomSwimView: View {
    
    // Array für Auswahl im Picker
    let auswahlSwim : [String] = ["Technik", "Sprints", "Ausdauer"]
    
    // Variable "Selection" im Picker für "Run"
    @State private var selectedSwim = 1
    
    // Variable Temporäre Auswahl zur Übergabe an Button
    var selectedFromPicker : String = ""
    
    // Variable Temporär Random Training "Run"
    @State var randomSwimTempWarmUp : String = ""
    @State var randomSwimTempMain : String = ""
    @State var randomSwimTempCoolDown : String = ""
    
    // Funktion RandomNumber für Auswahl im Array === RUN EASY
    func tempRandomNumberSwimEasy() -> Int {
        let temRanNum = Int.random(in: 0..<allEasySwims.count)
        return temRanNum }
    
    // Funktion RandomNumber für Auswahl im Array === RUN MEDIUM
    func tempRandomNumberSwimMedium() -> Int {
        let temRanNum = Int.random(in: 0..<allMediumSwims.count)
        return temRanNum }
    
    // Funktion RandomNumber für Auswahl im Array === RUN HARD
    func tempRandomNumberSwimHard() -> Int {
        let temRanNum = Int.random(in: 0..<allHardSwims.count)
        return temRanNum }
     
    var body: some View {
        
        
        
        VStack {
            VStack(spacing: 10) {
                
                Text("Schwimm-Training")
                    .font(.title2)
                    
                    .padding()
                    .background(Color("Background2"))
                    .cornerRadius(25)
                    .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                    .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                    .padding(.top, 18)
                    .padding(.bottom, 18)
                
                
                Picker(selection: $selectedSwim, label: Text("Picker"), content: {
                    ForEach(0..<auswahlSwim.count) {
                        Text(auswahlSwim[$0])
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
                
                let selectedFromPicker = auswahlSwim[selectedSwim]
                
                Button(action: {
                    
                    if selectedFromPicker == "Technik" {
                        let temRanNum = tempRandomNumberSwimEasy()
                        randomSwimTempWarmUp = "\(allEasySwims[temRanNum].warmUp)"
                        randomSwimTempMain = "\(allEasySwims[temRanNum].main)"
                        randomSwimTempCoolDown = "\(allEasySwims[temRanNum].coolDown)"
                        
                    } else if selectedFromPicker == "Sprints" {
                        let temRanNum = tempRandomNumberSwimMedium()
                        randomSwimTempWarmUp = "\(allMediumSwims[temRanNum].warmUp)"
                        randomSwimTempMain = "\(allMediumSwims[temRanNum].main)"
                        randomSwimTempCoolDown = "\(allMediumSwims[temRanNum].coolDown)"
                    } else if selectedFromPicker == "Ausdauer" {
                        let temRanNum = tempRandomNumberSwimHard()
                        randomSwimTempWarmUp = "\(allHardSwims[temRanNum].warmUp)"
                        randomSwimTempMain = "\(allHardSwims[temRanNum].main)"
                        randomSwimTempCoolDown = "\(allHardSwims[temRanNum].coolDown)"
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
                                    Text("\(randomSwimTempWarmUp)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                                
                                VStack(spacing: 6){
                                    Text("Main:")
                                        .bold()
                                    Text("\(randomSwimTempMain)")
                                        .fontWeight(.medium)
                                }.multilineTextAlignment(.center)
                                
                                
                                VStack(spacing: 6){
                                    Text("Cool-Down:")
                                        .bold()
                                    Text("\(randomSwimTempCoolDown)")
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
                    content: { Text("Die %-Angaben in den Trainings beziehen sich immer auf euer maximales Tempo, das auf 100m schwimmen könnt. Am besten alle paar Wochen einmal testen :-). Die Angaben sind immer Richtwerte. An guten Tagen legt man ein paar % drauf. An schlecht entsprechend weniger oder verkürzt die Einheiten. Das eigene Gefühl steht über jedem Trainingsplan :-)")
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

struct RandomSwimView_Previews: PreviewProvider {
    static var previews: some View {
        RandomSwimView()
    }
}
