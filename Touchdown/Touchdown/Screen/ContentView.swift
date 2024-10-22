//
//  ContentView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        GeometryReader { geometry in
            
            if !shop.showingProduct && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding()
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5   )
                    
                    Spacer()
                    
                    
                    ScrollView(.vertical) {
                        
                        VStack(spacing: 0) {
                            
                            FeaturedTabView()
                                .frame(height: geometry.size.width / 1.475)
                                .padding(.bottom, 10)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        
                                        .onTapGesture {
 
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                    }
                }
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                
            } else {
                ProductDetailView()
            }
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop() )
}
