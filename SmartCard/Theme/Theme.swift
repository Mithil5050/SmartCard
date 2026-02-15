//
//  AppTheme.swift
//  SmartCard
//
//  Created by Mithil on 14/02/26.
//


import SwiftUI

enum AppTheme {
    
    static let background = Color(hex: "#0B0D12")
    static let card = Color(hex: "#171A26")
    static let accent = Color(hex: "#6A6FF5")
    static let secondaryText = Color(hex: "#A1A4B3")
}

extension Color {
    init(hex: String) {
        let hex = hex.replacingOccurrences(of: "#", with: "")
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xff) / 255
        let g = Double((int >> 8) & 0xff) / 255
        let b = Double(int & 0xff) / 255
        self.init(red: r, green: g, blue: b)
    }
}
