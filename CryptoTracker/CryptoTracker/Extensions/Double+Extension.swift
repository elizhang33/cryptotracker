//
//  File.swift
//  CryptoTracker
//
//  Created by Eli  on 8/7/21.
//

import Foundation

extension Double {
    
    func converting(from input: ClosedRange<Self>, to output: ClosedRange<Self>) -> Self {
        let x = (output.upperBound - output.lowerBound) * (self - input.lowerBound)
        let y = (input.upperBound - input.lowerBound)
        return x / y + output.lowerBound
    }
}
