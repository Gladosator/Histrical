//
//  MoreInfoHeader.swift
//  Histerical
//
//  Created by Andrea Vysokaiová on 07/08/2021.
//

import SwiftUI

struct MoreInfoHeader: View {
    @State private var isAnimatingImage: Bool = false
    var Cselct: HGame
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: Cselct.gradientColors), startPoint: .top, endPoint: .bottom)
            Image(Cselct.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 5, y: 6)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.4)
            
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeIn(duration: 2)){
                isAnimatingImage = true
            }
        }
    }
}

struct MoreInfoHeader_Previews: PreviewProvider {
    static var previews: some View {
        MoreInfoHeader(Cselct: Games[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
