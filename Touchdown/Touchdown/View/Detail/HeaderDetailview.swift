//
//  HeaderDetailview.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct HeaderDetailview: View {
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 6, content: {
          Text("Protective Gear")
          
          Text(sampleProduct.name)
            .font(.largeTitle)
            .fontWeight(.black)
        })
        .foregroundStyle(.white)
      }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeaderDetailview()
        .padding()
        .background(Color.gray)
}
