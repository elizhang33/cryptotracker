//
//  CryptosResponse.swift
//  CryptoTracker
//
//  Created by Eli  on 8/5/21.
//

import Foundation

struct CryptosRankingResponse: Decodable {
    let status: String
    let data: CryptosRankingData
}

struct CryptosRankingData: Decodable {
    let coins: [Cryptos]
}
