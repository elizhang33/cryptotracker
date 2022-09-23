//
//  CryptosAPIRepository.swift
//  CryptoTracker
//
//  Created by Eli  on 8/15/21.
//

import Foundation
import Combine

protocol CryptosAPIRepository {
    func fetchCryptos() -> AnyPublisher<CryptosRankingResponse, Error>?
    
    func fetchCryptos2()
}
