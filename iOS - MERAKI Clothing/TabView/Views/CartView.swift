//
//  CartView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0{
                ForEach(cartManager.products, id: \.id){product in
                    CartProductView(product: product)
                }
                HStack{
                    Text("Total : ")
                    Spacer()
                    Text("LKR\(cartManager.total).00")
                        .bold()
                }
                .padding()
            }else {
                Text("Cart is Empty")
            }
        }
        .navigationTitle(Text("Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
