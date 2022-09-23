//
//  CryptosListView.swift
//  CryptoTracker
//
//  Created by Eli  on 8/5/21.
//

import SwiftUI

struct CryptosListView: View {
    
    var body: some View {
        ZStack {
            List {
                ForEach(viewModel.cryptos, id: \.name) { crypto in
                    viewFactory.cryptoListCellView(crypto: crypto)
                }
            }.padding()
            
           
        }.accessibilityIdentifier("Cryptos List")
        .navigationBarTitle("Cryptos")
        .navigationBarItems(trailing: Button(action: {withAnimation(.linear(duration: 1.0)) {viewModel.reloadData()}
        }, label: {
            Image(systemName: "goforward")
        }).rotationEffect(Angle(degrees: viewModel.isLoading ? 360 : 0), anchor: .center).accessibilityElement()
        .accessibilityIdentifier("Reload Button")
        .accessibilityLabel("Reload Data")
        .accessibility(addTraits: .isButton)
        )
        
    }

    init(viewModel: CryptosListViewModel, viewFactory: ViewFactory) {
        viewModel.getCryptos()
        self.viewModel = viewModel
        self.viewFactory = viewFactory
    }
    
    @ObservedObject private var viewModel: CryptosListViewModel
    private let viewFactory: ViewFactory
}

struct CryptosListView_Previews: PreviewProvider {
    static var previews: some View {
        Injector.shared.viewFactory.cryptosListView()
    }
}
