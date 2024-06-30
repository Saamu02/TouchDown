//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    var body: some View {
        
        Button(action: {
            
        }, label: {
            
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }) 
        .padding(15)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    AddToCartDetailView()
        .padding()
}
