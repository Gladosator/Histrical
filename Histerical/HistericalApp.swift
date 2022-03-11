//
//  HistericalApp.swift
//  Histerical
//
//  Created by Alex Vysokai on 8/6/21.
//

import SwiftUI

@main
struct HistericalApp: App {
    @AppStorage("FirstBoot") var FirstBoot: Bool = true
    var body: some Scene {
        WindowGroup {
            if FirstBoot {
                FirstBootView()
            }else{
                ContentView()
            }
        }
    }
}
