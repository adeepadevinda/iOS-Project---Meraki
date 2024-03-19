//
//  Cart.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-17.
//

import Foundation

class CartManager : ObservableObject{
    @Published private(set) var products: [Product] = []
    
    @Published private(set) var total: Int = 0
    
    func  addtoCart(product: Product){
        products.append(product)
        total += product.price
    }
    func removefromCart(product: Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
