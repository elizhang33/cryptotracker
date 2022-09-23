//
//  CryptosAPI.swift
//  CryptoTracker
//
//  Created by Eli  on 8/5/21.
//

import Foundation
import Combine

//https://api.coinranking.com/v1/public/coins?base=USD&timePeriod=24h&symbols=btc,eth,usdt,xrp,bch,ada,ltc,doge

class CryptosAPI: CryptosAPIRepository {
    lazy var urlComponents: URLComponents = {
       var component = URLComponents()
        component.scheme = "https"
        component.host = "api.coinranking.com"
        component.path = "/v1/public/coins"
        component.queryItems = [
            URLQueryItem(name: "base", value: "USD"),
            URLQueryItem(name: "timePeriod", value: "24h"),
        ]        
        return component
    }()

    init() {
        fetchCryptos2()
    }
   // static let shared = CryptosAPI()
    
}


extension CryptosAPI {
    
    func fetchCryptos() -> AnyPublisher<CryptosRankingResponse, Error>? {
        guard let url = urlComponents.url else { return nil }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: CryptosRankingResponse.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
    
    func fetchCryptos2() {
        guard let url = urlComponents.url else { return }
        
        print(url.absoluteURL)
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("error: \(error.localizedDescription)")
            }
            
            guard let data = data else { return }

            let decoder = JSONDecoder()
            
            do {
                let response = try decoder.decode(CryptosRankingResponse.self, from: data)
                let cryptos = response.data.coins
                for crypto in cryptos {
                    print(crypto.iconUrl)
                }
                
            } catch {
                print(error.localizedDescription)
                
            }
            
            
        }.resume()
    }
}
