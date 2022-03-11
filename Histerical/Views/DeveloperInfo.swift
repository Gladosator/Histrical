//
//  DeveloperInfo.swift
//  Histerical
//
//  Created by Andrea Vysokaiová on 07/08/2021.
//

import SwiftUI

struct DeveloperInfo: View {
    var DeveloperINF: HGame
    var body: some View {
        GroupBox{
            VStack {
                Image(DeveloperINF.developerLogo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("Developer:")
                    .font(.headline)
                Text(DeveloperINF.developer)
                    .font(.subheadline)
                Text("Developer Info:")
                    .font(.headline)
                Text(DeveloperINF.developerInfo)
                    .multilineTextAlignment(.center)
                    .padding()
                
                
            }
        }
        .cornerRadius(50)
    }
}

struct DeveloperInfo_Previews: PreviewProvider {
    static var previews: some View {
        DeveloperInfo(DeveloperINF: Games[0])
            .previewLayout(.sizeThatFits)
    }
}
