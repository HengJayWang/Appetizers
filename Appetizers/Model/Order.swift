//
//  Order.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/10.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
    
    func deleteItem(at index: IndexSet) {
        items.remove(atOffsets: index)
    }
    
}
