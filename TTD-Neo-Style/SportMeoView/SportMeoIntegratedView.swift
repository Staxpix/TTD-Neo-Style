//
//  SportMeoIntegratedView.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 13.08.21.
//

import SwiftUI

struct SportMeoIntegratedView: View {
    var body: some View {
        NavigationView {
            WebView(url: URL(string: "https://triteamduesseldorf.sportmeo.com/dates")).padding(50)
        }.navigationTitle("Anmeldung Trainings")
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SportMeoIntegratedView_Previews: PreviewProvider {
    static var previews: some View {
        SportMeoIntegratedView()
    }
}
