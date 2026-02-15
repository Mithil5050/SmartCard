//
//  HomeView.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var store: FlashcardStore
    
    var body: some View {
        ZStack {
            AppTheme.background
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    header
                    
                    createSection
                    
                    flashcardList
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
private extension HomeView {
    
    var header: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("SmartCards")
                .font(.largeTitle.bold())
            
            Text("Study smarter, not harder")
                .foregroundColor(AppTheme.secondaryText)
        }
    }
    
    var createSection: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            Text("Create New")
                .font(.title3.bold())
            
            NavigationLink(destination: CreateOptionsView()) {
                HStack {
                    Image(systemName: "plus.circle.fill")
                        .foregroundColor(AppTheme.accent)
                    
                    Text("Create Flashcards")
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding()
                .background(AppTheme.card)
                .cornerRadius(16)
            }
        }
    }
    
    var flashcardList: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Text("Your Flashcards")
                .font(.title3.bold())
            
            ForEach(store.sets) { set in
                NavigationLink(destination: FlashcardSetView(set: set)) {
                    FlashcardSetRow(set: set)
                }
            }
        }
    }
}
