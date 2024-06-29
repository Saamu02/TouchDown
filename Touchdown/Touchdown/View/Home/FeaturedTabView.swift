//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

struct FeaturedTabView: View {
    
     var body: some View {
        
        TabView {
             
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    FeaturedTabView()
        .background(.gray)
}
