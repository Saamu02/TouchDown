//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct CategoryGridView: View {
    
    
     
    var body: some View {
        
        ScrollView(.horizontal) {
            
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
 
                Section {
                    
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                    
                } header: {
                    SectionView(rotateClockWise: false)
                    
                } footer: {
                    SectionView(rotateClockWise: true)
                }
            }
            .frame(height: 150)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CategoryGridView()
        .padding()
        .background(colorBackground)
}
