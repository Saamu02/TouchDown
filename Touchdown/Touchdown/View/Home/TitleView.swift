//
//  TitleView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct TitleView: View {
    
    var title: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .font(.title)
                .fontWeight(.heavy)
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    TitleView(title: "Helmet")
        .background(.colorBackground)
}
