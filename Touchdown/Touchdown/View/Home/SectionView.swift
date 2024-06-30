//
//  SectionView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockWise: Bool
    
    var body: some View {
        
        VStack(spacing: 0 ) {
            
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 :  -90))
            
            Spacer()
        }
        .background(
            Color.gray
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
        )
        .frame(width: 85  )
    }
}

#Preview(traits: .fixedLayout(width: 120, height: 240)) {
    SectionView(rotateClockWise: false)
        .padding()
        .background(colorBackground)
}
