//
//  HistoryModel.swift
//  Histerical
//
//  Created by Alex Vysokai on 8/6/21.
//

import SwiftUI

struct HGame: Identifiable {
    var id = UUID()
    var title: String
    var image: String
    var gradientColors: [Color]
    var desciption: String
    var date: String
    var developer: String
    var developerLogo: String
    var developerInfo: String
    var SourcePage: String
    var SourceName: String
}
