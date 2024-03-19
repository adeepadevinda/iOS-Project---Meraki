//
//  Search.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-17.
//

import SwiftUI

struct Search: View {
    @State private var search: String = ""
    var body: some View {
        HStack{
            HStack{
                Image(systemName: "magnifyingglass")
                    .padding(.leading)
                TextField("Search", text: $search)
                    .padding()
            }
            .background(Color("Grey"))
            .cornerRadius(12)
            
            Image(systemName: "camera")
                
                .foregroundColor(.black)
                .cornerRadius(12)
            
        }
        .padding(.horizontal)
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
