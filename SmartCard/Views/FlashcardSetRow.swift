//
//  FlashcardSetRow.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import SwiftUI

struct FlashcardSetRow: View {
    
    let set: FlashcardSet
    
    var body: some View {
        HStack {
            
            VStack(alignment: .leading, spacing: 8) {
                Text(set.title)
                    .font(.headline)
                
                Text("\(set.cards.count) cards")
                    .foregroundColor(AppTheme.secondaryText)
            }
            
            Spacer()
            
            ProgressView(value: set.progress)
                .tint(AppTheme.accent)
                .frame(width: 60)
        }
        .padding()
        .background(AppTheme.card)
        .cornerRadius(20)
    }
}
