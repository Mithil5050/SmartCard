//
//  FlashcardSet.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import Foundation

struct FlashcardSet: Identifiable, Codable {
    let id = UUID()
    var title: String
    var cards: [Flashcard]
    var lastStudied: Date = Date()
    
    var progress: Double {
        guard !cards.isEmpty else { return 0 }
        let completed = cards.filter { $0.difficulty == .easy }.count
        return Double(completed) / Double(cards.count)
    }
}
