//
//  ContentView.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/7.
//

import SwiftUI

struct AppetizersTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
        }
        .accentColor(Color("brandPrimary"))
    }
}

struct AppetizersTabView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizersTabView()
    }
}
