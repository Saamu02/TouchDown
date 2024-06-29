//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 29/06/2024.
//

import SwiftUI

struct FeaturedItemView: View {
    
    let player: Player
    
    var body: some View {

        Image(player.image)
            .resizable()
            .scaledToFit()
            .clipShape(
                RoundedRectangle(cornerRadius: 12)
            )
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackground)
}
