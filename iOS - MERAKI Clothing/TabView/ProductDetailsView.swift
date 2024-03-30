//
//  ProductDetailsView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-24.
//

import SwiftUI

struct ProductDetailsView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    @State private var isHeartFilled = false
    
    var body: some View {
        ScrollView {
            AppBarDetails()
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomTrailing) {
                    Image(product.image)
                        .resizable()
                        .ignoresSafeArea(edges: .top)
                        .frame(height: 300)
                        .cornerRadius(15)
                    
                    Button(action: {
                        isHeartFilled.toggle()
                    }) {
                        Image(systemName: isHeartFilled ? "heart.fill" : "heart")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                            .padding(.top, 65)
                            .foregroundColor(isHeartFilled ? .red : .white)
                    }
                }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(product.name)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("LKR\(product.price).00")
                            .font(.title2)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .padding(.horizontal)
                            .background(Color.green)
                            .cornerRadius(8)
                    }
                    
                    HStack(spacing: 10) {
                        ForEach(0..<4) { index in
                            Image(systemName: "star.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.yellow)
                        }
                            Image(systemName: "star.leadinghalf.filled")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.yellow)
                        
                        Text("(4.5)")
                            .foregroundColor(.gray)
                        
                        Spacer()
                    
                        ZStack {
                            Rectangle()
                                .fill(Color.black.opacity(0.1))
                                .cornerRadius(8)
                              

                            HStack {
                                Text("Add to Cart")
                                    .foregroundColor(.black)
                                    .font(.headline)

                                Spacer()
                                
                                Button(action: {
                                    cartManager.addtoCart(product: product)
                                }
                                ) {
                                    Image(systemName: "plus.circle.fill")
                                        .resizable()
                                        .foregroundColor(Color.gray)
                                        .frame(width: 35, height: 35)
                                        .padding(.trailing, 10)
                                }
                            }
                        }
                    }
                    Text("Description")
                        .font(.title3)
                        .fontWeight(.medium)
                    
                    Text(product.description)
                    
                    Spacer()
                    
                    HStack(alignment: .top) {
                        Text("Size")
                            .font(.system(size: 18))
                        Spacer()
                        HStack {
                            Image(systemName: "s.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                            
                            Image(systemName: "m.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                            
                            Image(systemName: "l.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                        }
                    }
                }
                .padding()
                
                PaymentButton(action: {})
                    .frame(maxWidth: .infinity, maxHeight: 35)
            }
        }
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProductDetailsView(product: productList[4])
                .environmentObject(CartManager())
        }
    }
}

struct AppBarDetails: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Product Details")
                    .padding()
                    .font(.title2)
                    .fontWeight(.medium)
                
                Spacer()
                
                NavigationLink(destination: CartView().environmentObject(cartManager)) {
                    cartButton(numberofProducts: cartManager.products.count)
                        .padding(.horizontal)
                }
            }
        }
    }
}
