//
//  CardView.swift
//  AlphabetApp
//
//  Created by Raitis Zgirskis on 17/11/2024.
//

import SwiftUI

struct CardView: View {
    let card: AlphabetCard
    let onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: card.colors),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 300, height: 400)
                    .shadow(radius: 5)
                
                VStack(spacing: 20) {
                    Text(card.letter)
                        .font(.system(size: 160, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text(card.example)
                        .font(.system(size: 24, weight: .medium))
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .multilineTextAlignment(.center)
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
