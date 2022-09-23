//
//  Color+extension.swift
//  CryptoTracker
//
//  Created by Eli  on 8/7/21.
//

import SwiftUI
extension Color {
    static let base = Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    static let grayish = Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))
    static let greenish = Color(#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1))
    static let darkShadow = Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1))
    
    init(hex: String) {
        self.init(UIColor(hex: hex))
    }
}

extension UIColor {
    convenience init(hex: String) {
        var inputString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if inputString.hasPrefix("#") {
            inputString.remove(at: inputString.startIndex)
        }
        
        var rgbValue: UInt64  = 0
        
        Scanner(string: inputString).scanHexInt64(&rgbValue)
        
        self.init(
            red: CGFloat(rgbValue),
            green: CGFloat(rgbValue),
            blue: CGFloat(rgbValue),
            alpha: CGFloat(1.0)
        )
    }
}
