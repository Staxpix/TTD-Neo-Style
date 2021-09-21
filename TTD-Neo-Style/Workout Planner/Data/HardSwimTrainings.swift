//
//  HardSwimTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct HardSwimTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityHardSwimTrainings(short: "", long: "")
    
    
    
}

struct IntensityHardSwimTrainings {
    var short : String
    var long : String
}


var allHardSwims : [HardSwimTrainings] = [

    HardSwimTrainings(warmUp: "400m einschwimmen. Dann 400m Technik-Übungen. Zeit lassen & saubere Ausfühung.", main: "6x 400m Grundlage", coolDown: "400m locker ausschwimmen"),
    
    HardSwimTrainings(warmUp: "Nach Gefühl einschwimmen, mind. 600m", main: "6x 200m @ 85%. 2x 800m GA-1, wobei jede 4 Bahn deutlich angezogen wird auf 90%.", coolDown: "300m ausschwimmen"),
    
    HardSwimTrainings(warmUp: "400 einschwimmen und 4x25 kurze Sprints.", main: "3x Pyramide: 50m - 100m - 200m - 400m - 800m - 400m - 200m - 100m - 50m. Für Langdistanzler: Die 800m mit Paddles", coolDown: "400m ausschwimmen"),
    
    
    
    
    
    
    HardSwimTrainings(warmUp: "500m locker\n\n8 x 100m mit 50m Kick/50m Swim @ 70-75% mit 20sek Pause (Snorkel, Flossen)\n\n#1 &2:kick auf dem Rücken und nur Flossen. #3 & 4:Snorchel und dann aufm Bauch #5 & 6: Kick erst auf der linken seite Kicken und dann auf der rechten nach 25m #7 & 8: wieder auf seiten und nach 25m wechsel ohne Snorchel\n\n1 x 400m Swim @ 70% (Snorchel, Flosseb)", main: "Hauptset:\n\n4 x 175m Pull @ 80% @ mit 30 sek Pause (Snorchel, Pull Buoy (Empty), Schlauch ums Fußgelenkt) Alle Durchgänge sollten die gleiche Zeit haben! Mach dir einen Kopf wie das geht: nicht zu schnell angehen! Und dann ein Gefühl für 80% entwickeln. Wichtige Einheit!\n\n1 x 700m Pull @ 70% (mit den Toys wie gerade)", coolDown: "2 min austauchen"),
    
    HardSwimTrainings(warmUp: "500m locker\n\nWarmUp Set: 2x komplett durch (bedeutet erst die 100er, dann den 350er und dann nochmal von vorne:\n\n((3 x 100m EINARMIG wechsel alle 25m @ Progressive mit 20sek Pause (Snorchel, Flossen)) mit jedem 100er schneler werden.\n\nbei den 2. 3x100 keinen Snorchel, aber Flossen benutzen!\n\n1 x 350m Swim @ 70% (Snorchel, Flossen))", main: "Haupt Set:\n\n1 x 100m @ 85% mit :15 Pause\n\n1 x 200m @ 75% mit :30 Pause\n\n2 x 100m @ 85% mit :15 Pause\n\n1 x 200m @ 75% mit :30 Pause\n\n3 x 100m @ 85% mit :15 Pause\n\n1 x 200m @ 75% mit :30 Pause\n\n1x500m mit Snorchel, Flossen und PB Pull@70%", coolDown: "2 min austauchen"),
    
    HardSwimTrainings(warmUp: "Einheit mit 1km-Test\n\n200m easy ein\n\n6 x 100m -> 50m Kick/50m Swim mit 20 Sek Pause (Snorchel, Flossen, Kick Board)\n\n#1-4: 65%-70%-75%-80% und dann 5&6 auf 80% halten\n\n6 x 50m -> 25m Kick/25m Swim mit 15 Sek Pause (Snorchel)\n\nKeine Flossen! Beine aktivieren. mit jedem 50er etwas steigern und gute Form behalten.\n\n1 x 300m Swim @ 70% (Snorchel)\n\ngute Position behalten - locker!\n\nPREPARING for your 1k\n\n6 x 100m @ Progressive mit 15 sek Pause\n\nlangsam schneller werden und die letzten 2-4 ungefähr auf deinem 1k Test Niveau schwimmen. Ist also die Suche nach deinem Pace", main: "1K TT Test\n\n1 x 1000m @ 85%\n\nDrücken, aber gutes Tempo durchgehend halten. Nicht zu schnell angehen und das Tempo konstant aufrecht erhalten. Geh in der Sache auf und denke nur an die richtige Form. Zeit aufschreiben.\n\n1 x 200m @ Easy\n\nlocker locker locker egal ob mit PB oder ohne\n\n8 x 25m Swim auf 0:25\n\n#1 & 2: 80% effort.\n\n#: 3 fast (90%)\n\n#4: easy\n\n4 x 25m Swim\n\n10 harte Züge auf Max und dann locker. Pause wie benötigt.\n\n100 TT\n\n1 x 100m @ Fast\n\nDie ersten 50 sollten schnell sein, aber nicht max. Spare die Kicks in den ersten 50 noch etwas und dann raste völlig aus auf den restlichen 50. Schön durchpowern!", coolDown: "locker nach Belieben aus"),
    
    HardSwimTrainings(warmUp: "350m easy ein\n\n6 x150m Kick/Swim @70% mit 20 Sek Pause (Snorchel, Flossen)\n\n1 & 2: 50 kick/100 swim\n\n3 & 4: 75 kick/75 swim\n\n5 & 6: 100 kick/50 swim\n\nBeim Kicken: Kopf nach unten, Arme schön strecken und Arsch hoch und Füße schön beweglich haben und nicht absinken lassen.\n\n7 x 50m 25 Kick/25 Swim @ Progressive mit 10 Sek Pause und Snorchel KEINE Flossen!!\n\nZiel hier: Die schöne Form von eben beibehalten!\n\n16 x 25m Swim auf 0:25\n\n#1 & 2: 80% effort.\n\n#3: fast (90%)\n\n#4: easy und wieder von vorne!\n\nFast ist kein ALL OUT EFFORT!", main: "Hauptset:\n\n4 x 700m wie folgt aufgebaut:\n\n#1 700er: Pull\n\n4 x 175m Pull mit :25 Pause (Snorchel, Pull Buoy (Empty), Fußgelenksfessel)\n\nMit jedem etwas schneller werden: 70-75-80-85%.\n\nPause 20-30 Sek\n\n#2 700er SWIM\n\n7 x 100 Swim @ 85% mit 10-15 sek Pause\n\nKonzentration hier! Ohne Toys und richtig gute Form ausführen. Wird eklig.\n\n#3 700er: PULL\n\n2 x 350m Pull @ 70% mit 30 Sek Pause (Snorche, Pull Buoy (Empty), Fußgelenksfessel)\n\nDas hier dient als Erholung also wirklich Tempo auf 70% runtersetzen.\n\n#4 700er: Swim\n\n7 x 100m Swim mit 30 Sek Pause\n\n50m FAST/50m @ 80%\n\nDas wird eklig, wenn nicht, dann machst du es nicht hart genug auf den ersten 50 oder lässt zu sehr nach auf den 80%. Gut durchziehen!!", coolDown: "2-5min austauchen"),
    
    
    
    
    
    HardSwimTrainings(warmUp: "x400m einschwimmen. Dann 400m Technik-Übungen. Zeit lassen & saubere Ausfühung.", main: "x6x 400m Grundlage", coolDown: "x400m locker ausschwimmen"),
    
    
    


]
