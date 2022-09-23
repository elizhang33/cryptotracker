//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Eli  on 8/4/21.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {

    var body: some Scene {
        WindowGroup {
            Injector.shared.viewFactory.rootView()
        }
    }

    
}
