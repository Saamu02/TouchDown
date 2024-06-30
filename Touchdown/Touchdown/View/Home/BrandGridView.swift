//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {

        ScrollView(.horizontal) {
            
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, pinnedViews: []) {
                
                ForEach(brands) { brand in
                  BrandItemView(brand: brand)
                }
              }
            .frame(height: 200)
            .padding(15)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    BrandGridView()
}
