import SwiftUI
import Combine

final class FlashcardStore: ObservableObject {
    
    @Published var sets: [FlashcardSet] = []
    
    init() {
        loadSampleData()
    }
    
    func createSet(title: String, from text: String) {
        guard !title.isEmpty, !text.isEmpty else { return }
        
        let sentences = text
            .split(separator: ".")
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }
        
        let cards = sentences.map {
            Flashcard(
                front: "Explain this concept",
                back: $0
            )
        }
        
        let newSet = FlashcardSet(title: title, cards: cards)
        sets.insert(newSet, at: 0)
    }
    
    private func loadSampleData() {
        let demo = FlashcardSet(
            title: "Biology Fundamentals",
            cards: [
                Flashcard(front: "What is a cell?", back: "Basic unit of life"),
                Flashcard(front: "What is DNA?", back: "Genetic material")
            ]
        )
        
        sets = [demo]
    }
}
