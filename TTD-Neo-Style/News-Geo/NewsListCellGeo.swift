//
//  NewsListCellGeo.swift
//  TTD-1.0
//
//  Created by Daniel Enning on 26.05.21.
//

import SwiftUI

struct NewsListCellGeo: View {
    
    var headline: String
    var autor: String
    var date: String
    var image: String
    var textPreview: String
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .fill(Color("Background2"))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            HStack  {
                Spacer()
                
                
                
                VStack {
                    
                    
                    Text(headline)
                        .font(.title3)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .padding(14)
                        
                        .background(Color("Background2"))
                        .cornerRadius(25)
                        
                        
                        .shadow(color: Color("LightShadow2"), radius: 4, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                        
                    
                    Text(date)
                        .fontWeight(.light)
                        .foregroundColor(.black)
                        .font(.caption)
                        
                    
                    Image(uiImage: image.load())
                        .resizable()
                        .scaledToFit()
                        
                        .cornerRadius(25)
                        
                        .padding(10)
                        
                        .background(Color("Background2"))
                        .cornerRadius(25)
                        
                        
                        .shadow(color: Color("LightShadow2"), radius: 4, x: -6, y: -6)
                        .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
                        
                        
                        .frame(maxWidth: 500)

                }.padding(28)
                .background(Color("Background2"))
                .cornerRadius(25)
                .shadow(color: Color("LightShadow2"), radius: 6, x: -6, y: -6)
                .shadow(color: Color("DarkShadow2"), radius: 6, x: 8, y: 8)
              
            
                Spacer()
                
            }.frame(maxWidth: 600)
    }
            
        
    }
}

struct NewsListCellGeo_Previews: PreviewProvider {
    static var previews: some View {
        NewsListCellGeo(headline: "jfdkaj??sfkl", autor: "fjdka??fd", date: "12.12.12", image: "allrath-1", textPreview: "jfkdasjflkdsa fjdkalfj?? dfjdkslaf?? jfkdasl??jf dalf dklsfkldsa jfksa fjdksafj????dkslaj??f lk??sdajf ??klasdjf kl??ads??jf ??dsl kjf??klasdjdf ??kladsjf ??laskjf ??asdlkjf ??aldskfj dsl??kjf ??alskjf ??lsadkjf l??askj f??alsjf ??aslf")
    }
}

