//
//  ContentView.swift
//  iOS - MERAKI Clothing
//
//  Created by Adeepa on 2024-03-11.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        TabView{
//
//            HomeView()
//                .tabItem {
//                    Label("Home", systemImage: "house.fill")
//                }
//            ProductsView()
//                .tabItem{
//                    Label("Products", systemImage: "list.dash")
//                }
//            CartView()
//                .tabItem{
//                    Label("Cart", systemImage: "cart.fill")
//                }
//            ProfileOrders()
//                .tabItem{
//                    Label("Profile", systemImage: "person.fill")
//                }
//        }
//
//        .environmentObject(CartManager())
//        .navigationBarBackButtonHidden()
//        .edgesIgnoringSafeArea(.top)
//
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
                   
struct ContentView: View {
    @StateObject var cartManager = CartManager()
    @State var currentTab: Tab = .Home
    init() {
        UITabBar.appearance().isHidden = true
    }

    @Namespace var animation
    var body: some View {
        TabView(selection: $currentTab){
            HomeView()
                          .tag(Tab.Home) 
                      
                      ProductsView()
                          .tag(Tab.Category)
                      
                      CartView()
                          .tag(Tab.Cart)
                      
                      ProfileOrders()
                          .tag(Tab.Profile)
            }
            .overlay(
                HStack(spacing: 0){
                    ForEach(Tab.allCases, id: \.rawValue){
                        tab in
                        TabButton(tab: tab)
                    }
                    .padding(.vertical)
                    .padding(.bottom, getSafeArea().bottom == 0 ? 5 : (getSafeArea().bottom - 15))
                    .background(Color("Secondary"))
                }
                ,
                alignment: .bottom
            ).ignoresSafeArea(.all, edges: .bottom)
        }

    func TabButton(tab: Tab) -> some View {
        GeometryReader{proxy in
            Button(action: {
                withAnimation(.spring()){currentTab = tab}
            }, label: {
                VStack(spacing: 0){
                    Image(systemName: currentTab == tab ? tab.rawValue + ".fill": tab.rawValue)
                        .resizable()
                        .foregroundColor(Color("Primary"))
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                        .frame(maxWidth: .infinity)
                        .background(
                            ZStack{
                                if currentTab == tab {
                                    MaterialEffect(style: .light)
                                        .clipShape(Circle())
                                        .matchedGeometryEffect(id: "Tab", in: animation)
                                    Text (tab.TabName)
                                        .foregroundColor(.primary)
                                        .font(.footnote)
                                        .padding(.top, 50)
                                }
                            }
                        ).contentShape(Rectangle())
                        .offset(y: currentTab == tab ? -15 : 0)
                }
            })
        }
        .frame(height: 25)
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())
        
    }

}


        enum Tab : String, CaseIterable {
            case Home = "house"
            case Category = "menucard"
            case Cart = "cart"
            case Profile = "person"

            var TabName : String {
                switch self {
                case .Home:
                    return "Home"
                case .Category:
                    return "Category"
                case .Cart:
                    return "Cart"
                case .Profile:
                    return "Profile"
                }
            }
        }

extension View{
    func getSafeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as?
                UIWindowScene else{
            return .zero
        }
        guard let safeArea = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeArea
    }
}

struct MaterialEffect: UIViewRepresentable {
    var style: UIBlurEffect.Style

    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
}
