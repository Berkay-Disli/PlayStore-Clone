//
//  Product.swift
//  AppStore
//
//  Created by Berkay Disli on 16.04.2022.
//

import Foundation

struct Product: Identifiable {
    let id = UUID().uuidString
    let name: String
    let type: String
    let price: String
    let logo: String
    let photo: String
    let rating: Double
}


struct ProductEvent: Identifiable {
    let id = UUID().uuidString
    let name: String
    let owner: String
    let slogan: String
    let description: String
    let expiresIn: String
    let logo: String
    let photo: String
    let rating: Double
}
