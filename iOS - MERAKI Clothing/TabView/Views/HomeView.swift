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
                        
                        Image(systemName: "circle.grid.2x2.fill")
                            .foregroundColor(Color("Primary"))
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:10){
                            ForEach(productList, id: \.id){product in
                            NavigationLink{
                                Text(product.name)
                            } label: {
                                ProductCardView(product: product)
                                    .environmentObject(cartManager)
                            }
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                }
             
            }
           
        }
        .environmentObject(cartManager)
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
                        .frame(width: 20, height: 20)
                        .padding(.trailing)
                    
                    Text("Colombo, Sri Lanka")
                        .font(.title2)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    NavigationLink(destination: CartView()
                        .environmentObject(cartManager)){
                        cartButton(numberofProducts: cartManager.products.count)
                    }
                }
                Text("Crafted with Soul, \nWorn in")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
                    .bold()
                
                + Text(" Passion")
                    .font(.largeTitle.bold())
                    .foregroundColor((Color("Primary")))
            }
        }
        .padding()
        .environmentObject(CartManager())
    }
}
