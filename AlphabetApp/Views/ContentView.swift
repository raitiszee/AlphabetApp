import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = AlphabetCardViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                if !viewModel.cards.isEmpty {
                    CardView(card: viewModel.cards[viewModel.currentIndex]) {
                        AudioManager.shared.playSound(
                            named: viewModel.cards[viewModel.currentIndex].soundName
                        )
                        viewModel.nextCard()
                    }
                    .scaleEffect(viewModel.isCardFlipped ? 0.8 : 1)
                    .opacity(viewModel.isCardFlipped ? 0 : 1)
                    
                    Text("\(viewModel.currentIndex + 1) no \(viewModel.cards.count)")
                        .font(.headline)
                        .foregroundColor(.gray)
                        .padding(.top)
                    
                    NavigationButtons(
                        onPrevious: viewModel.previousCard,
                        onNext: viewModel.nextCard
                    )
                }
                
                Spacer()
            }
            .navigationTitle("Alfabēts")
            .toolbar {
                Button(action: viewModel.shuffleCards) {
                    Image(systemName: "shuffle")
                }
            }
        }
    }
}

// Preview Provider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
