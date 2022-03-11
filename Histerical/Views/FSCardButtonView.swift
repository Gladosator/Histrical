//
//  FSCardButtonView.swift
//  Histerical
//
//  Created by Alex Vysokai on 8/6/21.
//

import SwiftUI
struct FSCardButtonView: View {
    @AppStorage("FirstBoot") var
        FirstBoot: Bool?
    var body: some View {
        Button(action: {
            FirstBoot = false
        }, label: {
            HStack{
                Text("Sure!")
                    .font(.system(size: 32, weight: .semibold, design: .monospaced))
                
            }
            .padding()
            .background(Capsule().strokeBorder(Color.secondary,lineWidth: 3.5))
        })
        .accentColor(.primary)
    
        }
    }

struct FSCardButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FSCardButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
