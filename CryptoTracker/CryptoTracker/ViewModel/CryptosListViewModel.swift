//
//  CryptosListViewModel.swift
//  CryptoTracker
//
//  Created by Eli  on 8/6/21.
//

import Foundation
import Combine

class CryptosListViewModel: ObservableObject {
    
    func getCryptos() {
        guard let getCryptos = cryptosAPIRepository.fetchCryptos() else {
            print("no data")
            return
        }
        
        cancellable = getCryptos.sink(receiveCompletion: {error in
            print(error)
        }) {
            cryptosRankingResponse in
            self.cryptos = cryptosRankingResponse.data.coins.map { CryptosViewModel($0)}
            self.isLoading = false
        }
    }
    
    func reloadData() {
        isLoading = true
        //cryptosAPI.fetchCryptos2()
        getCryptos()
    }
    
    init (cryptosAPIRepository: CryptosAPIRepository) {
        self.cryptosAPIRepository = cryptosAPIRepository
    }
    
    private let cryptosAPIRepository: CryptosAPIRepository
    
    @Published var cryptos = [CryptosViewModel]()
    @Published var isLoading: Bool = false
    
    private let cryptosAPI = CryptosAPI()
    
    var cancellable: AnyCancellable?
    
    
}
