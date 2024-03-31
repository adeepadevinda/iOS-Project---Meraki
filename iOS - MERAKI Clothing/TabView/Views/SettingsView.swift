//
//  SettingsView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-30.
//

import SwiftUI

struct SettingsView: View {
    let settings = [
        "General",
        "Account Information",
        "Currency",
        "Policies",
        "Delete My Account",
    ]

    var body: some View {
        NavigationStack {
            List(settings, id: \.self) { settings in
                NavigationLink(destination: destinationView(for: settings)) {
                    Text(settings)
                }
            }
            .navigationTitle("Settings")
        }
    }
    
    func destinationView(for settings: String) -> some View {
        switch settings {
        case "Order Details":
            return AnyView(SettingsView())
        case "My Profile":
            return AnyView(ProfileView())
        case "Favorites":
            return AnyView(SettingsView())
        case "Settings":
            return AnyView(SettingsView())
        case "Sign Out":
            return AnyView(ProfileView())
        default:
            return AnyView(EmptyView())
        }
    }
}


struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
