//
//  NewsListGeo.swift
//  TTD-1.0
//
//  Created by Daniel Enning on 26.05.21.
//

import SwiftUI

struct NewsListGeo: View {
    
    var headline: String = ""
    var autor: String = ""
    var date: String = ""
    var image: String = ""
    var textPreview: String = ""
    
    
    @State var newsOnline : [NewsOnline] = []
    
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack{
                    ForEach(newsOnline) { newsOnline in
                        
                            
                        NavigationLink(
                            destination: NewsListGeoDetail(headline: newsOnline.headline, date: newsOnline.date, autor: newsOnline.autor, image: newsOnline.image, textPreview: newsOnline.textPreview, text: newsOnline.text, introTextLink: newsOnline.introTextLink, linkHomepage: newsOnline.linkHomepage),
                            label: {
                                NewsListCellGeo(headline: newsOnline.headline, autor: newsOnline.autor, date: newsOnline.date, image: newsOnline.image, textPreview: newsOnline.textPreview)
                                    .padding(.top, 40)
                                    .padding(.bottom, 40)
                                
                            }).buttonStyle(FlatLinkStyle())
                        
                        
                                    
                                        
                        
                                    
                          
                        
                    }.listStyle(PlainListStyle())
                    
                }.padding()
                
            }
        }.onAppear {
            apiCall().getNewsOnline { (newsOnline) in
                self.newsOnline = newsOnline
            }
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//struct NewsListGeo_Previews: PreviewProvider {
//    static var previews: some View {
//        NewsListGeo(headline: "fjdakl", autor: "fdalkö", date: "fdas", image: "allrath-1", textPreview: "fda")
//    }
//}
