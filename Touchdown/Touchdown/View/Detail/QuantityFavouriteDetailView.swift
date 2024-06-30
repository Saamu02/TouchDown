//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Ussama Irfan on 30/06/2024.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 6, content: {
            
            Button(action: {
                
                if counter > 0 {
                    hapticFeedBack.notificationOccurred(.success)
                    counter -= 1
                }
                
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                
                if counter < 100 {
                    hapticFeedBack.notificationOccurred(.success)
                    counter += 1
                }
                
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            })
        })
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        .imageScale(.large)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    QuantityFavouriteDetailView()
        .padding()
}
