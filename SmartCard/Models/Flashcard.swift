//
//  Flashcard.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import Foundation

struct Flashcard: Identifiable, Codable {
    let id = UUID()
    var front: String
    var back: String
    var difficulty: Difficulty = .medium
}

enum Difficulty: String, Codable {
    case easy
    case medium
    case hard
}
