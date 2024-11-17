//
//  NavigationButtons.swift
//  AlphabetApp
//
//  Created by Raitis Zgirskis on 17/11/2024.
//

import SwiftUI

struct NavigationButtons: View {
    let onPrevious: () -> Void
    let onNext: () -> Void
    
    var body: some View {
        HStack(spacing: 40) {
            Button(action: onPrevious) {
                Image(systemName: "arrow.left.circle.fill")
                    .font(.system(size: 44))
                    .foregroundColor(.blue)
            }
            
            Button(action: onNext) {
                Image(systemName: "arrow.right.circle.fill")
                    .font(.system(size: 44))
                    .foregroundColor(.blue)
            }
        }
        .padding()
    }
}

#Preview {
    NavigationButtons()
}
