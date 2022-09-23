//
//  AddCryptoView.swift
//  CryptoTracker
//
//  Created by Eli  on 8/10/21.
//

//import SwiftUI
//
///*Commented out for future mess around  */
//struct AddCryptoView: View  {
//    var body: some View {
//        Text("AddCryptovView")
//        Form {
//            Section (header: Text("Cryptos")) {
//                Picker("Cryptos", selection: self.$viewModel.cryptos) {
//                    ForEach(0..<16 ) {
//                        crypto in
//                        Text(crypto.symbol)
//                    }
//                }.pickerStyle(InlinePickerStyle())
//            }
//
//        }
//    }
//
//    // MARK: Initialization
//    init(isPresented: Binding<Bool>, viewModel: AddCryptoViewModel) {
//        self._isPresented = isPresented
//        self.viewModel = viewModel
//    }
//
//    @ObservedObject private var viewModel: CryptosListViewModel
//    @Binding private var isPresented: Bool
//}

//struct AddCryptoView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddCryptoView()
//    }
//}
