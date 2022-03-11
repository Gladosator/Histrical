//
//  ContentView.swift
//  Histerical
//
//  Created by Alex Vysokai on 8/6/21.
//

import SwiftUI

struct ContentView: View {
    var DataMax: [HGame] = Games
    var body: some View {
        NavigationView{
            List{
                ForEach(DataMax) { Game in
                    NavigationLink(
                        destination: LearnMoreView(DatI: Game),
                        label: {
                            Text(Game.title)
                        })
                    
                }
            }
            .navigationTitle("List of Games")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
