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
        VStack {
            Text("My Cart")
                .font(.title)
                .bold()
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
                    
                    PaymentButton(action: {})
                        .padding()
                }else {
                    Text("Cart is Empty")
                }
            }
            
        }
        .environmentObject(CartManager())
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
