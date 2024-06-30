//
//  Shop.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product?
}
