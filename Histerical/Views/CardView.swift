//
//  CardView.swift
//  Histerical
//
//  Created by Alex Vysokai on 8/6/21.
//

import SwiftUI

struct CardView: View {
    var Lal: FSMD
    @State private var isAnimating: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Image(Lal.Image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.1), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .scaleEffect(isAnimating ? 1.0 : 0.3)
                    .cornerRadius(80)
                    .padding(.bottom, 30)
                Text(Lal.Title)
                    .font(.title)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                Text(Lal.Headline)
                    .font(.headline)
                    .foregroundColor(.secondary)
                if Lal.HasButton {
                    FSCardButtonView()
                }else{
                    
                }
            }
        }
        .onAppear(perform: {
            withAnimation(.easeIn(duration: 0.5)){
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: Lal.GColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(Lal: FSdat[1])
            .preferredColorScheme(.dark)
    }
}
