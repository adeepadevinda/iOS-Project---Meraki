//
//  ProductDetailsView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-24.
//

import SwiftUI

struct ProductDetailsView: View {
    var product : Product
    var body: some View {
        ScrollView{
            ZStack{
                Color.white
                
                VStack(alignment: .leading){
                    ZStack(alignment: .topTrailing){
                        Image(product.image)
                            .resizable()
                            .ignoresSafeArea(edges: .top)
                            .frame(height: 300)
                            .cornerRadius(15)
                        
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding()
                            .padding(.top, 65)
                    }
                    VStack(alignment: .leading){
                        HStack{
                            Text(product.name)
                                .font(.title2 .bold())
                            
                            Spacer()
                            
                            Text("LKR\(product.price).00")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.horizontal)
                                .background(Color("Grey"))
                                .cornerRadius(12)
                        }
                        .padding(.vertical)
                        
                        HStack(spacing: 10){
                            ForEach(0..<5){index in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.yellow)
                            }
                            Text("(4.5)")
                                .foregroundColor(.gray)
                        }
                        .padding(.vertical)
                        Text("Description")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(product.description)
                        Spacer()
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Size")
                                    .font(.system(size: 18))
                                HStack{
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
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: productList[4])
    }
}
