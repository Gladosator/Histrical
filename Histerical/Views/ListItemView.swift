//
//  ListItemView.swift
//  Histerical
//
//  Created by Andrea Vysokaiová on 07/08/2021.
//

import SwiftUI

struct ListItemView: View {
    var ListData: HGame
    var body: some View {
            HStack{
                Image(ListData.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.5), radius: 2, x: 8, y: 8   )
                    .background(LinearGradient(gradient: Gradient(colors: ListData.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                VStack {
                    Text(ListData.date)
                        .foregroundColor(.secondary)
                        .font(.headline)
                    Text(ListData.developer)
                        .font(.headline)
                        .foregroundColor(Color("Tretiary"))
                }
                Spacer()
                Text(ListData.title)
                    .font(.system(size: 32, weight: .light, design: .rounded))
                    .foregroundColor(.primary)
                Spacer()
            }
        .cornerRadius(25)
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var previews: some View {
        ListItemView(ListData: Games[0])
            .previewLayout(.sizeThatFits)
    }
}
