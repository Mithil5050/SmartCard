//
//  CreateOptionsView.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import SwiftUI

struct CreateOptionsView: View {
    
    var body: some View {
        ZStack {
            AppTheme.background
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                Text("Create Flashcards")
                    .font(.title.bold())
                
                NavigationLink("Paste or Type Content") {
                    PasteNotesView()
                }
                .buttonStyle(PrimaryCardButton())
                
                NavigationLink("Guided Templates") {
                    Text("Coming Soon")
                        .foregroundColor(.white)
                }
                .buttonStyle(PrimaryCardButton())
                
                NavigationLink("Topic + Key Points") {
                    Text("Coming Soon")
                        .foregroundColor(.white)
                }
                .buttonStyle(PrimaryCardButton())
                
                Spacer()
            }
            .padding()
        }
    }
}
