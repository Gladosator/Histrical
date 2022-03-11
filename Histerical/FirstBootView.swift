//
//  FirstBootView.swift
//  Histerical
//
//  Created by Alex Vysokai on 8/6/21.
//

import SwiftUI

struct FirstBootView: View {
    var MSdata: [FSMD] = FSdat
    var body: some View {
        TabView {
            ForEach(MSdata){ item in
                CardView(Lal: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
        
    }
}

struct FirstBootView_Previews: PreviewProvider {
    static var previews: some View {
        FirstBootView()
            .preferredColorScheme(.dark)
        
    }
}
