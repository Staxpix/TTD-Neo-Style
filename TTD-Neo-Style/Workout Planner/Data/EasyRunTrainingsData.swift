//
//  EasyRundTrainingsData.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 13.05.21.
//

import Foundation
// EASY
struct EasyRunTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityEasyRunTrainings(short: "", long: "")
    
    
    
}

struct IntensityEasyRunTrainings {
    var short : String
    var long : String
}

// Sammlung EASY
var allEasyRuns : [EasyRunTrainings] = [

EasyRunTrainings(warmUp: "Leichtes Dehnen und dann 5 Minuten locker einlaufenLeichtes Dehnen und dann 5 Minuten locker einlaufenLeichtes Dehnen und dann 5 Minuten locker einlaufen", main: "5km GA1 - die SteLeichtes Dehnen und dann 5 Minuten locker einlaufenLeichtes Dehnen und dann 5 Minuten locker einlaufenigungen bewusst locker!", coolDown: "10 min lockeLeichtes Dehnen und dann 5 Minuten locker einlaufenr auslaufen", intensity: IntensityEasyRunTrainings(short: "2 Minuten", long: "5 Minuten")),
    
EasyRunTrainings(warmUp: "10 Minuten locker einlaufen. Ein paar Hopser-Sprünge einbauen.", main: "5km GA1. Locker an den Steigungen.", coolDown: "6 min locker auslaufen.", intensity: IntensityEasyRunTrainings(short: "4 Minuten", long: "10 Minuten")),
    
EasyRunTrainings(warmUp: "8 Minuten locker einlaufen mit Lauf-ABC-Übungen", main: "40 Minuten GA1", coolDown: "5 Minuten stetig langsamer werden bis zum gehen. Leichte(!) Dehnübungen", intensity: IntensityEasyRunTrainings(short: "8 Minuten", long: "14 Minuten"))


]
