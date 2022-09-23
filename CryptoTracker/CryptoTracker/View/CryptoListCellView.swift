//
//  CryptoListCellView.swift
//  CryptoTracker
//
//  Created by Eli  on 8/5/21.
//

import SwiftUI


struct CryptoListCellView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                VStack(alignment: .leading) {
                    Text(crypto.name)
                        .foregroundColor(Color.black)
                }
            
                Spacer()
                
                VStack (alignment: .trailing) {
                    Text(crypto.formattedPrice)
                        .foregroundColor(Color.black)
                    Text(String(format: "%@%0.02f%%", crypto.change > 0.0 ?  "+" : "", crypto.change))
                        .foregroundColor(crypto.change > 0.0 ? positiveChangeColor : negativeChangeColor)
                }
            }.padding()
            .frame(height: 25)
            
           NavigationLink(
            destination: viewFactory.cryptosListCellDetailView(crypto: crypto),
            label: {
                /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            }).hidden()
        }
    }
    
    private let positiveChangeColor = Color.greenish
    private let negativeChangeColor = Color.red
    
    init (crypto: CryptosViewModel, viewFactory: ViewFactory) {
        self.crypto = crypto
        self.viewFactory = viewFactory
    }

    let crypto: CryptosViewModel
    private var viewFactory: ViewFactory
}

struct CryptoListCellView_Previews: PreviewProvider {
    static var previews: some View {
        //CryptoListCellView()
        Injector.shared.viewFactory.cryptosListView()
    }
}
