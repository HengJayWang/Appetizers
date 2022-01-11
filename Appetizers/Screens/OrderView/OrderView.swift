//
//  OrderView.swift
//  Appetizers
//
//  Created by M100-M1MacMini on 2022/1/7.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { orderItem in
                            AppetizerListCell(appetizer: orderItem)
                        }
                        .onDelete(perform: order.deleteItem )
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("order placed")
                    } label: {
//                        APButton(title: "$\(order.totalPrice, specifier: "%.2f") - Place Order")
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 30)
                }
                
                if order.items.isEmpty {
                    EmptyOrder(imageName: "empty-order",
                               message: "Your have no items in your order.\nPlease add an appetizer!")
                }
                
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
