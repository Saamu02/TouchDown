//
//  LogoView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

struct LogoView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        
        HStack(spacing: 14) {
            
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
                .offset(x: isAnimating ? 0 : -100)
                .opacity(isAnimating ? 1 : 0)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30 , alignment: .center)
                .offset(y: isAnimating ? 0 : -50)
                .opacity(isAnimating ? 1 : 0)
            
            Text("Down ".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
                .offset(x: isAnimating ? 0 : 100)
                .opacity(isAnimating ? 1 : 0)

        }
        .onAppear {
            
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating = true
            }
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
        .padding()
}
