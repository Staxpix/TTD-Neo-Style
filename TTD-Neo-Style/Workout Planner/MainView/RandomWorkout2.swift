//
//  RandomWorkout2.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 16.05.21.
//

import SwiftUI

struct RandomWorkout2: View {
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(.init(red: 224/255, green: 229/255, blue: 236/255))
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
    }
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        GeometryReader{ geometry in
            
            ScrollView(showsIndicators : false){
            
            ScrollView(.horizontal, showsIndicators : false) {
                
                VStack{
                    HStack{
                        
                            RandomRunView()
                        
                        
                        
                        
                        RandomSwimView()
                        
                        RandomBikeView()
                    }.offset(x: -30)
                }.frame(minHeight: geometry.size.height)
                
                
                
            }
            
            }
            
            
        }
    }
        
        
        
    }
}

struct RandomWorkout2_Previews: PreviewProvider {
    static var previews: some View {
        RandomWorkout2()
    }
}
