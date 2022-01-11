//
//  ContentView.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/7.
//

import SwiftUI

struct AppetizersTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem { Label("Home", systemImage: "house") }
            AccountView()
                .tabItem { Label("Account", systemImage: "person") }
            OrderView()
                .tabItem { Label("Order", systemImage: "cart") }
                .badge(order.items.count)
        }
    }
}

struct AppetizersTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersTabView()
    }
}
