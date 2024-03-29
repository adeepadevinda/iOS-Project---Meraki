//
//  ProfileOrders.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-28.
//

import SwiftUI

struct ProfileOrders: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Order History")
                    .font(.title)
                    .bold()
                    .padding()
                
                // Display order history here
                List {
                    ForEach(1..<6) { index in
                        Text("Order \(index)")
                    }
                }
            }
            .navigationBarTitle("Profile", displayMode: .inline)
        }
    }
}

struct ProfileOrders_Previews: PreviewProvider {
    static var previews: some View {
        ProfileOrders()
    }
}

