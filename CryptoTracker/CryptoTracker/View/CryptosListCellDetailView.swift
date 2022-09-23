//
//  CryptosListCellDetailView.swift
//  CryptoTracker
//
//  Created by Eli  on 8/13/21.
//

import SwiftUI

struct CryptosListCellDetailView: View {
    
    var body: some View {
        ScrollView{
            VStack {
                Section(header: Text("OverView").font(.largeTitle).accessibilityIdentifier("Header")) {
                    Spacer(minLength: 20)
                    //Text(crypto.name)
                    Text("Current Price: " + crypto.formattedPrice).accessibilityIdentifier("Current Price")
                    Text("24h change: " + "\(crypto.change)%").accessibilityIdentifier("24h change")
                    Text("Rank: " + "\(crypto.rank)").accessibilityIdentifier("Rank")
                }
                
                Spacer()
                
                Section(header: Text("Graph").font(.title).accessibilityIdentifier("Graph")) {
                    viewFactory.cryptosGraphView(data: crypto.history)
                }
            }
        }.navigationBarTitle(self.crypto.name)
        .accessibilityIdentifier("Crypto Details")
    }
 
    init (crypto: CryptosViewModel, viewFactory: ViewFactory) {
        self.crypto = crypto
        self.viewFactory = viewFactory
    }
    
    private let crypto: CryptosViewModel
    private var viewFactory: ViewFactory
    
}

/*required two much fake data to include here, so I comment preview out*/
//struct CryptosListCellDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        //CryptosListCellDetailView()
//        Injector.shared.viewFactory.cryptosListCellDetailView(crypto: )
//    }
//}

