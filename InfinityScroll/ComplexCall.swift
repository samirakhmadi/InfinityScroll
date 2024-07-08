//
//  ComplexCall.swift
//  InfinityScroll
//
//  Created by Samir on 07.07.2024.
//

import SwiftUI

struct ComplexCell: View {
    var body: some View {
        ZStack {
            // Центральное эмодзи в качестве фона
            Text(randomEmoji())
                .font(.system(size: 200))
                .opacity(0.1)
                .zIndex(0)
            
            HStack {
                ForEach(0..<3) { _ in
                    EmojiCell()
                }
            }
            .zIndex(1)
        }
        .padding()
    }
    
    private func randomEmoji() -> String {
        let emojiRange = 0x1F300...0x1F3F0
        let randomScalar = UnicodeScalar(emojiRange.randomElement()!)!
        return String(randomScalar)
    }
}

