//
//  CryptosListViewModel.swift
//  CryptoTracker
//
//  Created by Eli  on 8/6/21.
//

import SwiftUI

struct CryptosViewModel {
    var id: UUID {
        return UUID()
    }
    
    let crypto: Cryptos
    
    var name: String {
        return crypto.name
    }
    
    var formattedPrice: String {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
        return formatter.string(from: Double(crypto.price)! as NSNumber)!
    }
    
    var symbol: String {
        crypto.symbol.lowercased()
    }
    
    var color: Color {
        Color(hex: crypto.color!)
    }
    
    var change: Double {
        crypto.change
    }
    
    var rank: Int {
        crypto.rank
    }
    
    var history: [Double] {
        let hitsNums = crypto.history.map {
            Double($0)!
        }
        
        let min = hitsNums.min()!
        let max = hitsNums.max()!
        
        var computedValues = [Double]()
        
        for item in hitsNums {
            computedValues.append(item.converting(from: min...max, to: 0...1))
        }
        
        return computedValues
    }
    /*this property is for favorite view and will be needed if the view be added in the future*/
    //var favorited = false
    
    init(_ crypto: Cryptos) {
        self.crypto = crypto
    }
    
}
