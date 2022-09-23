//
//  Injector.swift
//  CryptoTracker
//
//  Created by Eli  on 8/15/21.
//

import Foundation

class Injector {
    init () {
        cryptosAPIRepository = CryptosAPI()
        viewFactory = ViewFactory(cryptosAPIRepository: cryptosAPIRepository)
    }
    
    let viewFactory: ViewFactory
    
    let cryptosAPIRepository: CryptosAPIRepository
    
    static let shared = Injector()
}
