//
//  ProfileOrders.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-28.
//

import SwiftUI

struct ProfileOrders: View {
    let players = [
        "Order Details",
        "My Profile",
        "Favorites",
        "Settings",
        "Sign Out",
    ]

    var body: some View {
        NavigationStack {
            List(players, id: \.self) { player in
                NavigationLink(destination: destinationView(for: player)) {
                    Text(player)
                }
            }
            .navigationTitle("Profile")
        }
    }
    
    // Function to determine destination view based on the selected player
    func destinationView(for player: String) -> some View {
        switch player {
        case "Order Details":
            return AnyView(OrderView())
        case "My Profile":
            return AnyView(ProfileView())
        case "Favorites":
            return AnyView(HomeView())
        case "Settings":
            return AnyView(SettingsView())
        case "Sign Out":
            return AnyView(ProfileView())
        default:
            return AnyView(EmptyView())
        }
    }
}

struct ProfileOrders_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOrders()
    }
}


