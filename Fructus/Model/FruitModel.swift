//
//  FruitModel.swift
//  FruitModel
//
//  Created by Rodrigo Conte on 16/09/21.
//

import SwiftUI

// MARK: - Fruits data model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
