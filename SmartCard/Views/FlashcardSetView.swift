//
//  FlashcardSetView.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import SwiftUI

struct FlashcardSetView: View {
    
    @State var set: FlashcardSet
    @State private var currentIndex = 0
    @State private var flipped = false
    
    var body: some View {
        ZStack {
            AppTheme.background
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                card
                
                Spacer()
                
                Button("Flip") {
                    withAnimation {
                        flipped.toggle()
                    }
                }
                .tint(AppTheme.accent)
            }
            .padding()
        }
    }
}
private extension FlashcardSetView {
    
    var card: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 24)
                .fill(AppTheme.card)
            
            Text(flipped ? set.cards[currentIndex].back
                         : set.cards[currentIndex].front)
                .padding()
                .multilineTextAlignment(.center)
        }
        .frame(height: 250)
        .padding()
    }
}
