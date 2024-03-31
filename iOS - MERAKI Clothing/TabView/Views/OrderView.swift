//
//  OrderView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-30.
//

import SwiftUI

struct OrderView: View {
    let order1 = [
        "Order 01",
        "Order 02",
        "Order 03",
        "Order 04",
        "Order 05",
    ]
    var body: some View {
        NavigationStack {
            List(order1, id: \.self) { order1 in
                NavigationLink(destination: ordernameView(for: order1)) {
                    Text(order1)
                }
            }
            .navigationTitle("Orders")
        }
    }
    func ordernameView(for order1: String) -> some View {
        switch order1 {
        case "Order 01":
            return AnyView(OrderView())
        case "Order 02":
            return AnyView(ProfileView())
        case "Order 03":
            return AnyView(SettingsView())
        case "Order 04":
            return AnyView(SettingsView())
        case "Order 05":
            return AnyView(ProfileView())
        default:
            return AnyView(EmptyView())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
