import SwiftUI

struct ProductsView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var column = [GridItem(.adaptive(minimum: 160), spacing: 10)]
    
    var body: some View {
        VStack(spacing: 0) {
            AppBarProduct()
         
            ScrollView {
                LazyVGrid(columns: column, spacing: 10) {
                    ForEach(productList, id: \.id) { product in
                        NavigationLink(destination: ProductDetailsView(product: product)) {
                            ProductCardView(product: product)
                        }
                        .environmentObject(cartManager)
                    }
                }
                .padding()
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProductsView()
                .environmentObject(CartManager())
        }
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
