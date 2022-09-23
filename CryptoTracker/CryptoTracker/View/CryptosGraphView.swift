//
//  CryptosGraphView.swift
//  CryptoTracker
//
//  Created by Eli  on 8/14/21.
//

import SwiftUI

struct CryptosGraphView: View {
    
    var body: some View {
        VStack {
            LineGraph(dataPoints: data)
                .trim(to: on ? 1 : 0)
                .stroke(strokeColor, style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: . round))
                .aspectRatio(16/9, contentMode: .fit)
                .border(Color.base, width: 1)
                .padding()
                .onAppear() {
                    withAnimation(Animation.easeInOut(duration: 2)) {
                        self.on.toggle()
                    }
                }
                
            
        }
    }
    init (data: [Double]) {
        self.data = data
    }
    
    @State private var on = false
    //var data: [Double]
    private let data: [Double]
    var strokeColor: Color = .blue
    
}

/*required two much fake data to include here, so I comment preview out*/
//struct CryptosGraphView_Previews: PreviewProvider {
//    static var previews: some View {
//        //CryptosGraphView()
//        Injector.shared.viewFactory.cryptosGraphView(data: <#T##[Double]#>)
//    }
//}
