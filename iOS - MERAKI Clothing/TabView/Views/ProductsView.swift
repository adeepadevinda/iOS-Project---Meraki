import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 10)]
    
    var body: some View {
        VStack(spacing: 0) { // Set spacing to 0
            AppBarProduct()
            
            ScrollView {
                LazyVGrid(columns: column, spacing: 10) {
                    ForEach(productList, id: \.id) { product in
                        ProductCardView(product: product)
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
        VStack(alignment: .leading) {
            HStack {
                Text("Browse")
                    .padding()
                    .font(.title)
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
