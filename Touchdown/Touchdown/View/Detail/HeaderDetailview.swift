//
//  HeaderDetailview.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct HeaderDetailview: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6, content: {
          Text("Protective Gear")
          
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
            .font(.largeTitle)
            .fontWeight(.black)
        })
        .foregroundStyle(.white)
      }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailview()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
