//
//  EasySwimTrainings.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 15.05.21.
//

import Foundation

struct EasySwimTrainings {
    var warmUp : String
    var main : String
    var coolDown : String
    
    var intensity = IntensityEasySwimTrainings(short: "", long: "")
    
    
    
}

struct IntensityEasySwimTrainings {
    var short : String
    var long : String
}


var allEasySwims : [EasySwimTrainings] = [

EasySwimTrainings(warmUp: "200m nach Belieben einschwimmen. Lagen wechseln, kein Kraul.", main: "5x 100m mit jeweils 25m Scheibenwischer, 25m Ente, 25m schaufeln, 25m Kraul. Dann 5x 100m Lagen. Dann 5x 100m: 25m Technikübung nach Belieben - 25m Sprinten - 50m weiter kraulen", coolDown: "200m ausschwimmen"),
    
EasySwimTrainings(warmUp: "300m einschwimmen, kein Kraul.", main: "6x 50m Beine mit Brett. 6x 50m Arme mit Pullbuoy. 4x 50m Kraul-Abschlag vorne. 4x 50m Kraul-Abschlag hinten. 2x400m locker, aber sehr sauber kraulen.", coolDown: "300m ausschwimmen"),
    
EasySwimTrainings(warmUp: "400m Lagen, locker, jeweils nach 25m wechseln", main: "Mit Flossen: 8x 50m Beine. Dabei jeder 2. Durchgang mit Dampf. Flossen anlassen und dann in Seitwärtslage: 1 Arm zeigt nach vorne, 1 Arm zeigt aus dem Wasser. Nach 25m Seite wechseln. Insg. auch 8 Durchgänge hier. Flossen bleiben dran + Paddles: 6x 200m", coolDown: "400m ausschwimmen"),

    
    EasySwimTrainings(warmUp: "10min locker ein", main: "8x100 mit 50kicken/50 swim progressiv also von mal zu mal schneller mit 20 Sek Pause und Flossen (falls vorhanden) \n\n1x400 mit Flossen und Snorchel (sonst normal) @70% \n\nPULL: 1x700m @70% mit PB, Snorchel, Schlauch ums Fußgelenk \n\n8x50m mit 10sek Pause mit PB, Snorchel, Schlauch ums Fußgelenk UND Paddels \n\n8x25m mit Pause wie benötigt mit PB, Snorchel, Schlauch ums Fußgelenk UND Paddels", coolDown: "400m locker aus auf 70% also mega easy"),
    
    EasySwimTrainings(warmUp: "10 min locker ein", main: "2x(5x100m) mit Snorchel und Fins 20 sek Pause -> 1. 100swim 2. 75swim/25kick 3. 50swim/50kick 4. 25swim/75kick 5. 100kick \n\n400m swim easy @70% mit Snorchel und Fins \n\nPull 2x350m mit 30 Sek Pause und (Snorchel, PB, Schlauch ums Gelenk) 1. 70% 2. progressiv zu 80% \n\n8x50 mit 10 sek Pause (Snorchel, PB, Schlauch ums Gelenk) 80% \n\n8x25m (Snorchel, PB, Schlauch ums Gelenk+ Paddels) Pause wie benöigt mit 10 harten Zügen", coolDown: "350 ohne alles locker aus und Technik genießen"),
    
    EasySwimTrainings(warmUp: "500m easy ein -- 4x( 3x100@progressiv mit 20 Sek Pause und Snorchel und Flossen (Falls vorhanden)\n\ndie ersten 100: nur schwimmen\n\ndie zweiten 100: 50 kicken / 50 schwimmen\n\ndie dritten 100: alles kicken)", main: "2x (\n\n8x100m progressiv 65% 70% 75% 80% und wiederholen mit 20 sek Pause\n\n1x400m PB, Snorchel und Fußgelenk", coolDown: "300m ausschwimmen"),
    
    EasySwimTrainings(warmUp: "600m easy ein", main: "600m Kick/Swim @ Progressive (Snorkel, Fins, Kick Board) durchgehend ohne Pause 100mkick und 100swim im Wechsel\n\n8 x 50m 25 Kick/25 Swim @ Progressive 15 sek Pause (Snorkel)\n\nVERTICAL KICKING\n\n4 x 30 sekunden im Stehen kicken am Rand mit 30 Sek PAuse und dann direkt 50m schwimmen @70%\n\n4 x 10 sekunden im Stehen kicken am Rand mit 25 Sek Pause und dann direkt 25m schwimmen @sehr schnell\n\nHauptSet:\n\n800m Pull @ 70% mit 1:00 Pause (Snorkel, Pull Buoy (Empty), Ankle Strap)\n\n6 x 100m Pull @ 70% mit 20 Pause (Pull Buoy (Empty), Ankle Strap)", coolDown: "32min austauchen"),
    
    EasySwimTrainings(warmUp: "400m einschwimmen, kein Kraul.", main: "8x50m 2x (75%/80%/85% locker) mit 15 sek Pause\n\n400m Deck Up alle 100m und sighting 2xpro 25m 70%\n\n8x100m 15sek Pause und Pace 75%/85%/90% locker)\n\n400m Deck Up alle 100m und sighting 2xpro 25m 70%\n\n2x100m All Out", coolDown: "5min locker"),
    
    EasySwimTrainings(warmUp: "600m easy ein", main: "600m Kick/Swim @ Progressive (Snorkel, Fins, Kick Board) durchgehend ohne Pause 100mkick und 100swim im Wechsel\n\n8 x 50m 25 Kick/25 Swim @ Progressive 15 sek Pause (Snorkel)\n\nVERTICAL KICKING\n\n4 x 30 sekunden im Stehen kicken am Rand mit 30 Sek PAuse und dann direkt 50m schwimmen @70%\n\n4 x 10 sekunden im Stehen kicken am Rand mit 25 Sek Pause und dann direkt 25m schwimmen @sehr schnell\n\nHauptSet:\n\n800m Pull @ 70% mit 1:00 Pause (Snorkel, Pull Buoy (Empty), Ankle Strap)\n\n1 x 400m Pull @ 70% mit :40sek Pause (Pull Buoy (Empty), Ankle Strap)\n\n1 x 400 Swim @ 70% ohne alles\n\n8 x 50m @ 85% mit 15 Sek Pause", coolDown: "2min austauchen"),
    
    EasySwimTrainings(warmUp: "3500m easy ein", main: "4x( 3x100@progressiv mit 20 Sek Pause und Snorchel und Flossen (Falls vorhanden)\n\ndie ersten 100: nur schwimmen\n\ndie zweiten 100: 50 kicken / 50 schwimmen\n\ndie dritten 100: alles kicken)\n\nHauptset: 2x (\n\n8x100m progressiv 65% 70% 75% 80% und wiederholen mit 20 sek Pause\n\n1x400m PB, Snorchel und Fußgelenk", coolDown: "300m ausschwimmen"),
    
            EasySwimTrainings(warmUp: "600m easy ein", main: "600m Kick/Swim @ Progressive (Snorkel, Fins, Kick Board) durchgehend ohne Pause 100mkick und 100swim im Wechsel\n\n8 x 50m 25 Kick/25 Swim @ Progressive 15 sek Pause (Snorkel)\n\nVERTICAL KICKING\n\n4 x 30 sekunden im Stehen kicken am Rand mit 30 Sek PAuse und dann direkt 50m schwimmen @70%\n\n4 x 10 sekunden im Stehen kicken am Rand mit 25 Sek Pause und dann direkt 25m schwimmen @sehr schnell\n\nHauptSet:\n\n800m Pull @ 70% mit 1:00 Pause (Snorkel, Pull Buoy (Empty), Ankle Strap)\n\n1 x 400m Pull @ 70% mit :40sek Pause (Pull Buoy (Empty), Ankle Strap)\n\n1 x 400 Swim @ 70% ohne alles\n\n8 x 50m @ 85% mit 15 Sek Pause", coolDown: "2min austauchen"),
    
            EasySwimTrainings(warmUp: "10min easy ein", main: "1000m Kick/Swim @ Progressive (Snorkel, Fins, Kick Board) durchgehend ohne Pause 200m kick/200 swim 150k/150s 100k/100s 50k/50s\n\n8 x 50m 25 Kick/25 Swim @ Progressive 15 sek Pause (Snorkel)\n\nVERTICAL KICKING\n\n2 x 30 sekunden im Stehen kicken am Rand mit 30 Sek PAuse und nach dem 2. mal direkt 50m schwimmen @70%\n\nHauptSet:\n\n4x( 1 x 200m Swim @ 70% mit 30 Sek Pause @ 70%.\n\n1 x 150m @ 75-80% mit 25 sek Pause\n\n1 x 100 @ 80-85% mit 20 Sek Pause\n\n1 x 50 @ 85-90% 30 sek Pause )", coolDown: "2min austauchen"),
    
    
            EasySwimTrainings(warmUp: "10min easy ein.", main: "2x500m Kick/Swim @ Progressive (Snorkel, Fins) 100 kick/100 swim; 75 kick/75 swim; 50 kick/50 swim; 25 kick/25 swim\n\n2x (6 x 50m) 25 Kick/25 Swim @ 85% 15 sek Pause (Snorkel)\n\nHauptSet:\n\n8x( 20 Sek Vertical Kick @ 80-85%\n\nund dann sofort 50m schwimmen @ 80-85% mit 20 sek Pause )\n\n400m Swim @ 70-75%\n\n8x( 10 Sek Vertical Kick @ all out\n\nund dann sofort 25m schwimmen @ schnell mit 30 sek Pause )\n\n400m Swim @ 70-75%\n\n800m Pull @ 70-75% (Snorkel, Pull Buoy, Ankle Strap)", coolDown: "2min austauchen"),
    
    
    EasySwimTrainings(warmUp: "600m easy ein", main: "600m Kick/Swim @ Progressive (Snorkel, Fins, Kick Board) durchgehend ohne Pause 100mkick und 100swim im Wechsel\n\n8 x 50m 25 Kick/25 Swim @ Progressive 15 sek Pause (Snorkel)\n\nVERTICAL KICKING\n\n4 x 30 sekunden im Stehen kicken am Rand mit 30 Sek PAuse und dann direkt 50m schwimmen @70%\n\n4 x 10 sekunden im Stehen kicken am Rand mit 25 Sek Pause und dann direkt 25m schwimmen @sehr schnell\n\nHauptSet:\n\n800m Pull @ 70% mit 1:00 Pause (Snorkel, Pull Buoy (Empty), Ankle Strap)\n\n6 x 100m Pull @ 70% mit 20 Pause (Pull Buoy (Empty), Ankle Strap)", coolDown: "2min austauchen"),
    
    EasySwimTrainings(warmUp: "400m easy ein", main: "8x 100m mit 50kick/50swim auf dem Rücken mit fins\n\n8x (30sek Vertical Kick und dann sofort 25m schwimmen @70% mit 30 Sek Pause)\n\nHauptSet:\n\n3 x 400m @ Progressive mit :45 Pause\n\n70%-75%-80%\n\n8 x 100m @ 80% mit 20 sek Pause", coolDown: "2min austauchen")
    
    
    
    
    
    
    
    
    
    
    
    

]
