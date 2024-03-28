//
//  HomeView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-13.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top){
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                  AppBar()
                    Search()
                    ImageSliderView()

                    HStack{
                        Text("New Arrivals")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            ProductsView()
                        }, label: {
                            
                            Image(systemName: "circle.grid.2x2.fill")
                                .foregroundColor(Color("Primary"))
                        })
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:10){
                            ForEach(productList, id: \.id){product in
                            NavigationLink{
                                Text(product.name)
                            } label: {
                                ProductCardView(product: product)
                                    .environmentObject(CartManager())
                            }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }
             
            }
           
        }
        .environmentObject(CartManager())
        .ignoresSafeArea()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(CartManager())
    }
}

struct AppBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading){
                HStack{
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .padding(.horizontal)
                    
                    Text("Colombo, Sri Lanka")
                        .foregroundColor(.black)
                       
                    
                    Spacer()
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)){
                        cartButton(numberofProducts: cartManager.products.count)
                                .padding(.horizontal)
                    }
                }
                VStack{Text("    Crafted with Soul,")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .bold()
                    Text("Worn in")
                        .font(.title2)
                        .foregroundColor(.gray)
                        .bold()
                    
                     + Text(" Passion")
                        .foregroundColor((Color("Primary")))
                        .font(.title2)
                        .fontWeight(.bold)
                }
                .padding(.horizontal)
                .padding(.horizontal)
                
            }
        }
       
        .environmentObject(CartManager())
    }
}
