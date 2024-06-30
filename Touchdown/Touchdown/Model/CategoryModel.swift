//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
