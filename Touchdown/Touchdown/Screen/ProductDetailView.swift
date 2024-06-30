//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.bottom, 10)
                .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
            
            
            HeaderDetailview()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            
            VStack(alignment: .center, spacing: 0) {
                
                RatingSizesDetailView()
                  .padding(.top, -20)
                  .padding(.bottom, 10)

                ScrollView(.vertical) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                .scrollIndicators(.hidden)
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                AddToCartDetailView()
                    .padding(.bottom , 20)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(.rect(topLeadingRadius: 35, topTrailingRadius: 35))
                    .padding(.top, -105)
            )
            .zIndex(0)
        }
        .ignoresSafeArea(edges: .bottom)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            )
            .ignoresSafeArea(.all, edges: .all)
        )
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
