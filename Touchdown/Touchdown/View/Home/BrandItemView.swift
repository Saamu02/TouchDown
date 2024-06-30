//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: Brand

    var body: some View {
        
        Image(brand.image)
          .resizable()
          .scaledToFit()
          .padding(3)
          .background(
            Color.white
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
          )
          .background(
            RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
          )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    BrandItemView(brand: brands[0])
        .padding()
        .background(colorBackground)
}
