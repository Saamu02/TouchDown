//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    var body: some View {
        
        HStack {
            Button(action: {
                
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
        .padding()
        .background(Color.gray)
}
