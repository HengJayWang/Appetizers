//
//  ApperizerListViewModel.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/7.
//

import SwiftUI

final class ApperizerListViewModel: ObservableObject {
    @Published private var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
