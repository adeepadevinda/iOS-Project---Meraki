//
//  cartButton.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-19.
//

import SwiftUI

struct cartButton: View {
    var numberofProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag.fill")
                .foregroundColor(.black)
                .padding(5)
            if numberofProducts > 0 {
                Text("\(numberofProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.green)
                    .cornerRadius(50)
            }
        }
            
        }
}

struct cartButton_Previews: PreviewProvider {
    static var previews: some View {
        cartButton(numberofProducts: 1)
    }
}
