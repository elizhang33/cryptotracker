//
//  FavoriteListView.swift
//  CryptoTracker
//
//  Created by Eli  on 8/5/21.
//

//import SwiftUI
//
///*commented out this part because encountered a bug failing to add tagert favorite crypto/cryptos in to the favorite view*/
//struct FavoriteListView: View {
//    var body: some View {
//        ZStack {
//            List () {
//                Text("My Watch List")
//                Text("My Watch List")
//                Text("My Watch List")
//            }.padding()
//
//            NavigationLink(
//                destination: AddCryptoView(),
//                label: {
//                    Text("Add Crypto")
//                }).hidden()
//
//        }.navigationBarTitle("My Favorites", displayMode: .inline)
//        .toolbar(content: {
//            ToolbarItemGroup(placement: ToolbarItemPlacement.navigationBarTrailing) {
//                Button(action: {
//                    shouldNavigateToAddCrypto = true
//                }, label: {
//                    Image(systemName: "plus").font(Font.body).imageScale(.large)
//                }).accessibilityElement().accessibilityIdentifier("Add Crypto Button").accessibilityLabel("Add Crypto").accessibility(addTraits: .isButton)
//            }
//        })
//
//    }
//
//    @State private var shouldNavigateToAddCrypto = false
//    @ObservedObject private var viewModel: FavoriteListViewModel
//
//    init (viewModel: FavoriteListViewModel) {
//        self.viewModel = viewModel
//    }
//}

/*struct FavoriteListView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteListView()
    }
}*/
