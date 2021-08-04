//
//  SpotStart.swift
//  TTD-0.1
//
//  Created by Daniel Enning on 30.04.21.
//

import SwiftUI

struct SpotStart: View {
    
    let spots : [Spots] = Bundle.main.decode("Spots.json")
    
    var body: some View {
        NavigationView {
//            List {
            ZStack {
                
                Rectangle()
                    .fill(Color("Background2"))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                ForEach(spots) { spots in
                        NavigationLink(destination: SpotDetail(spots: spots))
                        {
                            SpotListItem(spots: spots)
                                .padding(.bottom, 20)
                                .padding()
                        }
                        .buttonStyle(FlatLinkStyle())
                }.padding()
    //            }.listStyle(PlainListStyle())
                
                
                .navigationBarTitle("Spots", displayMode: .inline)
            }
        }
            
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SpotStart_Previews: PreviewProvider {
    
    static var previews: some View {
        SpotStart()
    }
}

//ForEach(spots.sorted {$1.id > $0.id})
