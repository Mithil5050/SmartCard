//
//  SmartCardApp.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//

import SwiftUI

@main
struct SmartCardsApp: App {
    
    @StateObject private var store = FlashcardStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .environmentObject(store)
            }
            .preferredColorScheme(.dark)
        }
    }
}
