//
//  ProductsView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-25.
//

import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager : CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing : 20)]
    var body: some View {
        NavigationStack{
            AppBarProduct()
            NavigationView{
                ScrollView{
                    LazyVGrid(columns: column, spacing: 20){
                        ForEach(productList, id: \.id){product in
                            ProductCardView(product : product)
                        }
                    }
                    .padding()
                }
              }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .environmentObject(CartManager())
    }
}

struct AppBarProduct: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                HStack{
                    Text("Browse")
                        .padding()
                        .font(.title)
                        .fontWeight(.medium)
           
                    Spacer()
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)){
                        cartButton(numberofProducts: cartManager.products.count)
                                .padding(.horizontal)
                    }
                }
               
                
            }
        }
       
        .environmentObject(CartManager())
    }
}
