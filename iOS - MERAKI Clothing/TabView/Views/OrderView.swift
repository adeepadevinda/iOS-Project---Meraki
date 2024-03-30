//
//  OrderView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-30.
//

import SwiftUI

struct OrderView: View {
    let order1 = [
        "Order Details",
        "My Profile",
        "Favorites",
        "Settings",
        "Sign Out",
    ]
    var body: some View {
        NavigationStack {
            List(order1, id: \.self) { order1 in
                NavigationLink(destination: ordernameView(for: order1)) {
                    Text(order1)
                }
            }
            .navigationTitle("Profile")
        }
    }
    func ordernameView(for order1: String) -> some View {
        switch order1 {
        case "Order Details":
            return AnyView(OrderView())
        case "My Profile":
            return AnyView(ProfileView())
        case "Favorites":
            return AnyView(CartView())
        case "Settings":
            return AnyView(SettingsView())
        case "Sign Out":
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
