//
//  LearnMoreView.swift
//  Histerical
//
//  Created by Andrea Vysokaiová on 07/08/2021.
//

import SwiftUI

struct LearnMoreView: View {
    var DatI: HGame
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    MoreInfoHeader(Cselct: DatI)
                    VStack(alignment: .leading, spacing: 8) {
                        Text(DatI.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(DatI.gradientColors[1])
                        DeveloperInfo(DeveloperINF: DatI)
                        Text(DatI.desciption)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 32, weight: .semibold, design: .serif))
                    }
                }
                .navigationTitle("More about \(DatI.title)")
                .edgesIgnoringSafeArea(.top)
            }
            
        }
        
    }
}

struct LearnMoreView_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreView(DatI: Games[0])
    }
}
