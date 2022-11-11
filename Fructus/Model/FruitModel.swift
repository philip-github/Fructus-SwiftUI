//
//  FruitModel.swift
//  Fructus
//
//  Created by Philip Al-Twal on 10/13/22.
//

import SwiftUI

//MARK: - FRUIT DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
