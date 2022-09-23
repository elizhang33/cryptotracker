//
//  RootView.swift
//  CryptoTracker
//
//  Created by Eli  on 8/5/21.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            NavigationView() {
                viewFactory.cryptosListView()
        }.tabItem { Label(title: { Text("Cryptocurrency")}, icon: {Image(systemName: "bitcoinsign.circle")}) }
        }
    }
    
    private let viewFactory: ViewFactory
    
    init (viewFactory: ViewFactory) {
        self.viewFactory = viewFactory
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        Injector.shared.viewFactory.rootView()
    }
}
