//
//  MediumSwimTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct MediumSwimTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityMediumSwimTrainings(short: "", long: "")
    
    
    
}

struct IntensityMediumSwimTrainings {
    var short : String
    var long : String
}


var allMediumSwims : [MediumSwimTrainings] = [

MediumSwimTrainings(warmUp: "400m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "10x 100m Sprints @ 100 - 110%. Max. Sekunden Pause. Quält euch!", coolDown: "500m ausschwimmen"),
    
MediumSwimTrainings(warmUp: "Lockeres Einschwimmen mit mind. 6x 50m Technikübungen.", main: "Wichtig: nach jeder Bahn max. 5 Sekunden Pause: 16x 25m Sprint @ 95% - 1 Bahn locker nach Belieben - 12x 25m Sprint @ 95% - 1 Bahn locker nach Belieben - 8x 25m Sprint @ 95% - 1 Bahn locker nach Belieben - 4x 25m Sprint @ 95% - 1 Bahn locker nach Belieben -", coolDown: "200m ausschwimmen"),
    
MediumSwimTrainings(warmUp: "600m Technik mit Kraul-Abschlag, Ente & Beine.", main: "Paddles an. 8x 50m @100 % - 4x 100m @ 90% - 2x 400m @85%, jede 4. Bahn anziehen.", coolDown: "400m Lagen ausschwimmen"),
    
    
    
    
    
    
    MediumSwimTrainings(warmUp: "200m locker\n\n6 x 150m Kick/Swim @ 70% mit 20 Sek Pause (Snorchel und Flossen):\n\ndie ersten beiden 50 kick/100 swim. die zweiten beiden 75 kick/75 swim. die letzten beiden: 100 kick/50 swim\n\n4x Vertical Kick:\n\n1 x 0:30sek Vertical Kick @ Progressive\n\n1 x 50m Swim @ Progressive mit 20 sek Pause", main: "Haupt Set:\n\n10 x 100m Swim @ Progressive mit 20sek Pause\n\ndie ersten 3 auf 75% effort.\n\ndie nächsten 3 auf 80% effort.\n\nden Rest auf 85% effort\n\n1 x 350m @ 70% (Snorchel, PB, Schlauch ums Fußgelenk)\n\n10 x 50m Swim @ Progressive mit 10 sek Pause\n\n1x350m mit Snorchel, Flossen und PB Pull@70%", coolDown: "200m ausschwimmen"),
    
    
    MediumSwimTrainings(warmUp: "x400m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "x10x 100m Sprints @ 100 - 110%. Max. Sekunden Pause. Quält euch!", coolDown: "x500m ausschwimmen"),
    
    MediumSwimTrainings(warmUp: "x400m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "x10x 100m Sprints @ 100 - 110%. Max. Sekunden Pause. Quält euch!", coolDown: "x500m ausschwimmen"),
    
    MediumSwimTrainings(warmUp: "x400m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "x10x 100m Sprints @ 100 - 110%. Max. Sekunden Pause. Quält euch!", coolDown: "x500m ausschwimmen"),

    
    
    
    
    
    
    
    
    MediumSwimTrainings(warmUp: "x400m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "x10x 100m Sprints @ 100 - 110%. Max. Sekunden Pause. Quält euch!", coolDown: "x500m ausschwimmen"),
    
    
    
    

]
