//
//  Product.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-16.
//

import Foundation

struct Product : Identifiable {
    var id = UUID()
    var name : String
    var image : String
    var description : String
    var supplier : String
    var price : Int
}

var productList = [
    Product(name: "White Oversized T-shirt",
            image: "ladies_tshirt_white",
            description: " ",
            supplier: "ZigZag",
            price: 2890),
    Product(name: "Navy Oversized T-shirt",
            image: "ladies_tshirt_navu",
            description: " ",
            supplier: "ZigZag",
            price: 2890),
    Product(name: "Black Oversized T-shirt",
            image: "ladies_tshirt_black",
            description: " ",
            supplier: "ZigZag",
            price: 2890),
    Product(name: "Black Linen Detailed Maxi",
            image: "dress01",
            description: " ",
            supplier: "ZigZag",
            price: 7990),
    Product(name: "Puffed Sleeve Mini Linen Dress",
            image: "dress02",
            description: " ",
            supplier: "ZigZag",
            price: 4990),
    Product(name: "Two Tone Scuba Printed Dress",
            image: "dress03",
            description: " ",
            supplier: "ZigZag",
            price: 7990),
    Product(name: "Black Hoodie",
            image: "hoodle_black",
            description: " ",
            supplier: "ESNTLS",
            price: 5890),
    Product(name: "Grey Hoodle",
            image: "hoodle_grey",
            description: " ",
            supplier: "ESNTLS",
            price: 5890),
    Product(name: "Men's Shorts - Black",
            image: "mens_shorts_black",
            description: " ",
            supplier: "ZigZag",
            price: 3490),
    Product(name: "Men's Shorts - Green",
            image: "mens_shorts_green",
            description: " ",
            supplier: "ZigZag",
            price: 3490),
    Product(name: "Men's Polo Shirt - Black",
            image: "men_black_polo",
            description: " ",
            supplier: "TFO",
            price: 3490),
    Product(name: "Men's Polo Shirt - Grey",
            image: "mens_grey_polo",
            description: " ",
            supplier: "TFO",
            price: 3490),
    Product(name: "Men's T-Shirt - Black",
            image: "tshirt_black",
            description: " ",
            supplier: "ESNTLS",
            price: 1490),
   
    
            
            

]
