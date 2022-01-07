//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/7.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = ApperizerListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍕 Appetizers")
        }
        .onAppear {
            viewModel.getAppetizers()
        }
    }

}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
