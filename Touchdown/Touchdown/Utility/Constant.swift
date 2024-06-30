//
//  Constant.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI


// MARK: - DATA
let players: [Player] = Bundle.main.decode("player.json")!
let categories: [Category] = Bundle.main.decode("category.json")!
let products: [Product] = Bundle.main.decode("product.json")!


// MARK: - COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// MARK: - Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10

var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

