//
//  FooterView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

struct FooterView: View {
    
    var body: some View {
        
        VStack {
            
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .layoutPriority(0)
                
            Text("Copyright © Ussama\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FooterView()
        .padding()
}
