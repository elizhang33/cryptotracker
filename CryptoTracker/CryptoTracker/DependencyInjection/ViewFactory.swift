//
//  ViewFactory.swift
//  CryptoTracker
//
//  Created by Eli  on 8/15/21.
//

import Foundation
import SwiftUI

class ViewFactory {
    func rootView() -> RootView {
        RootView(viewFactory: self)
    }
    
    func cryptosListView(/*crypto: CryptosViewModel*/) -> CryptosListView {
        CryptosListView(viewModel: CryptosListViewModel(cryptosAPIRepository: cryptosAPIRepository)/*, crypto: crypto*/, viewFactory: self)
    }
    
    func cryptoListCellView(crypto: CryptosViewModel) -> CryptoListCellView {
        CryptoListCellView(/*viewModel: CryptosListViewModel(cryptosAPIRepository: cryptosAPIRepository), */crypto: crypto, viewFactory: self)
    }
    
    func cryptosListCellDetailView(crypto: CryptosViewModel) -> CryptosListCellDetailView {
        CryptosListCellDetailView(crypto: crypto, viewFactory: self)
    }
    
    func cryptosGraphView(data: [Double]) -> CryptosGraphView {
        CryptosGraphView(data: data)
    }
    
    init (cryptosAPIRepository: CryptosAPIRepository) {
        self.cryptosAPIRepository = cryptosAPIRepository
    }
    
    private let cryptosAPIRepository: CryptosAPIRepository
}
