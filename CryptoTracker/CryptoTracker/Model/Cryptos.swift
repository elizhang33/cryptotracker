//
//  Cryptos.swift
//  CryptoTracker
//
//  Created by Eli  on 8/5/21.
//

import Foundation

struct Cryptos: Decodable {
    let uuid: String
    let symbol: String
    let name: String
    let color: String?
    let iconUrl: String
    let price: String
    let change: Double
    let rank: Int
    let history: [String]
    
    //var favorited = false
}
