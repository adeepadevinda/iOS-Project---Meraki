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
            description: "Effortlessly chic, our white oversized t-shirt is the epitome of comfort meets style. Crafted from soft, breathable fabric, it offers a relaxed fit for easy everyday wear. Perfect for layering or as a standalone statement piece.",
            supplier: "ZigZag",
            price: 2890),

    Product(name: "Navy Oversized T-shirt",
            image: "ladies_tshirt_navu",
            description: "Embrace timeless style with our navy oversized t-shirt. Made from premium fabric, this t-shirt features a classic design with a modern twist. Whether paired with jeans or shorts, it adds a touch of sophistication to any outfit.",
            supplier: "ZigZag",
            price: 2890),

    Product(name: "Black Oversized T-shirt",
            image: "ladies_tshirt_black",
            description: "Upgrade your wardrobe essentials with our black oversized t-shirt. Crafted from high-quality fabric, it offers superior comfort and durability. Versatile and stylish, it's perfect for creating effortless everyday looks.",
            supplier: "ZigZag",
            price: 2890),

    Product(name: "Black Linen Detailed Maxi",
            image: "dress01",
            description: "Elevate your look with our black linen detailed maxi dress. Featuring intricate detailing and a flattering silhouette, this dress is perfect for special occasions or casual outings. Made from premium linen fabric, it offers both style and comfort.",
            supplier: "ZigZag",
            price: 7990),

    Product(name: "Puffed Sleeve Mini Linen Dress",
            image: "dress02",
            description: "Embrace timeless elegance with our puffed sleeve mini linen dress. Crafted from breathable linen fabric, its flattering silhouette is complemented by charming puffed sleeves, adding a touch of sophistication to your summer wardrobe. Whether you're strolling through the city streets or enjoying a seaside getaway, this dress is sure to make a statement.",
            supplier: "ZigZag",
            price: 4990),
    Product(name: "Two Tone Scuba Printed Dress",
            image: "dress03",
            description: "Make a statement with our two-tone scuba printed dress. Featuring a bold design and flattering silhouette, this dress is perfect for any occasion. Made from high-quality scuba fabric, it offers both style and comfort.",
            supplier: "ZigZag",
            price: 7990),

    Product(name: "Black Hoodie",
            image: "hoodle_black",
            description: "Stay warm and stylish with our black hoodie. Made from soft, cozy fabric, it features a classic design with modern details. Whether you're lounging at home or running errands, this hoodie is a must-have addition to your wardrobe.",
            supplier: "ESNTLS",
            price: 5890),

    Product(name: "Grey Hoodie",
            image: "hoodle_grey",
            description: "Elevate your casual look with our grey hoodie. Crafted from premium fabric, it offers both warmth and style. With its versatile design, it's perfect for layering or as a standalone piece.",
            supplier: "ESNTLS",
            price: 5890),

    Product(name: "Men's Shorts - Black",
            image: "mens_shorts_black",
            description: "Upgrade your summer wardrobe with our men's shorts in black. Made from durable and lightweight fabric, these shorts offer both comfort and style. Whether you're hitting the beach or running errands, they're the perfect choice for warm-weather days.",
            supplier: "ZigZag",
            price: 3490),

    Product(name: "Men's Shorts - Green",
            image: "mens_shorts_green",
            description: "Add a pop of color to your summer wardrobe with our men's shorts in green. Crafted from high-quality fabric, these shorts are both comfortable and stylish. Perfect for outdoor activities or casual outings.",
            supplier: "ZigZag",
            price: 3490),

    Product(name: "Men's Polo Shirt - Black",
            image: "men_black_polo",
            description: "Achieve a classic look with our men's polo shirt in black. Made from premium cotton fabric, it offers superior comfort and durability. Whether paired with jeans or shorts, it's the perfect choice for a casual yet polished ensemble.",
            supplier: "TFO",
            price: 3490),

    Product(name: "Men's Polo Shirt - Grey",
            image: "mens_grey_polo",
            description: "Elevate your wardrobe with our men's polo shirt in grey. Featuring a timeless design and comfortable fit, this shirt is perfect for any occasion. Made from high-quality fabric, it offers both style and durability.",
            supplier: "TFO",
            price: 3490),

    Product(name: "Men's T-Shirt - Black",
            image: "tshirt_black",
            description: "Refresh your basics with our men's t-shirt in black. Crafted from soft, breathable fabric, it offers all-day comfort and style. Whether worn alone or layered under a jacket, it's a versatile addition to your wardrobe.",
            supplier: "ESNTLS",
            price: 1490)

   
    
            
            

]
