//
//  AlphabetCardViewModel.swift
//  AlphabetApp
//
//  Created by Raitis Zgirskis on 17/11/2024.
//

import SwiftUI

class AlphabetCardViewModel: ObservableObject {
    @Published var cards: [AlphabetCard] = []
    @Published var currentIndex = 0
    @Published var isCardFlipped = false
    
    init() {
        createCards()
    }
    
    private func createCards() {
        cards = LatvianAlphabetData.letters.map { letter in
            let randomGradient = LatvianAlphabetData.gradients.randomElement() ?? [.blue, .purple]
            return AlphabetCard(
                letter: letter,
                colors: randomGradient,
                soundName: "letter_\(letter.lowercased())",
                example: LatvianAlphabetData.examples[letter] ?? ""
            )
        }.shuffled()
    }
    
    func shuffleCards() {
        cards.shuffle()
        currentIndex = 0
    }
    
    func nextCard() {
        changeCard(to: (currentIndex + 1) % cards.count)
    }
    
    func previousCard() {
        changeCard(to: (currentIndex - 1 + cards.count) % cards.count)
    }
    
    private func changeCard(to index: Int) {
        withAnimation {
            isCardFlipped = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                self.currentIndex = index
                withAnimation {
                    self.isCardFlipped = false
                }
                AudioManager.shared.playSound(
                    named: self.cards[self.currentIndex].soundName
                )
            }
        }
    }
}
