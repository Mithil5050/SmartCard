//
//  PasteNotesView.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import SwiftUI

struct PasteNotesView: View {
    
    @EnvironmentObject var store: FlashcardStore
    @Environment(\.dismiss) var dismiss
    
    @State private var title = ""
    @State private var content = ""
    
    var body: some View {
        ZStack {
            AppTheme.background
                .ignoresSafeArea()
            
            VStack(spacing: 16) {
                
                TextField("Set Title", text: $title)
                    .textFieldStyle(.roundedBorder)
                
                TextEditor(text: $content)
                    .scrollContentBackground(.hidden)
                    .padding()
                    .background(AppTheme.card)
                    .cornerRadius(16)
                
                Button("Generate Flashcards") {
                    store.createSet(title: title, from: content)
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(AppTheme.accent)
                
                Spacer()
            }
            .padding()
        }
    }
}
