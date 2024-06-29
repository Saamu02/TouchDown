//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

struct NavigationBarView: View {
     
    var body: some View {
       
        HStack {
            
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            })
            
            Spacer()
            
            LogoView()
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundStyle(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10 )
                }
            })
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarView()
        .padding()
}
