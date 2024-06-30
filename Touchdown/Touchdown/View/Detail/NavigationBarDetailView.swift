//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                hapticFeedBack.notificationOccurred(.success)

                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
                
            }, label: {
            Image(systemName: "chevron.left")
              .font(.title)
              .foregroundStyle(.white)
          })
          
          Spacer()
          
          Button(action: {
              
              
          }, label: {
            Image(systemName: "cart")
              .font(.title)
              .foregroundStyle(.white)
          })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
