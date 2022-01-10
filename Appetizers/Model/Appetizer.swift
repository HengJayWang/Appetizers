//
//  Appetizer.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/7.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let carbs: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sample = Appetizer(id: 1,
                                  name: "Fry Fish",
                                  description: "Very good Fry Fish.",
                                  price: 9.9,
                                  imageURL: "",
                                  calories: 9,
                                  carbs: 99,
                                  protein: 99)
    
    static let appetizers = [sample, sample, sample, sample, sample]
    
    static let order1 = Appetizer(id: 0001,
                                  name: "Order 1",
                                  description: "Very good Fry Fish.",
                                  price: 9.9,
                                  imageURL: "",
                                  calories: 9,
                                  carbs: 99,
                                  protein: 99)
    
    static let order2 = Appetizer(id: 0002,
                                  name: "Order 2",
                                  description: "Very good Fry Fish.",
                                  price: 9.9,
                                  imageURL: "",
                                  calories: 9,
                                  carbs: 99,
                                  protein: 99)
    
    static let order3 = Appetizer(id: 0003,
                                  name: "Order 3",
                                  description: "Very good Fry Fish.",
                                  price: 9.9,
                                  imageURL: "",
                                  calories: 9,
                                  carbs: 99,
                                  protein: 99)
    
    static let order4 = Appetizer(id: 0004,
                                  name: "Order 4",
                                  description: "Very good Fry Fish.",
                                  price: 9.9,
                                  imageURL: "",
                                  calories: 9,
                                  carbs: 99,
                                  protein: 99)
    
    static let orderItems = [order1, order2, order3, order4]
}
