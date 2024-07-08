//
//  EmojiCell.swift
//  InfinityScroll
//
//  Created by Samir on 07.07.2024.
//

import SwiftUI

struct EmojiCell: View {
    private var emoji: String {
        let emojiRange = 0x1F300...0x1F3F0
        let randomScalar = UnicodeScalar(emojiRange.randomElement()!)!
        return String(randomScalar)
    }
    
    private var description: String {
        let descriptions = [
            "Joy", "Love", "Fun", "Luck", "Hope",
            "Peace", "Calm", "Happiness", "Bliss", "Cheer"
        ]
        return descriptions.randomElement()!
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
                .frame(width: 100, height: 100)
            
            VStack {
                Text(emoji)
                    .font(.largeTitle)
                Text(description)
                    .font(.caption)
                    .padding(.top, 5)
            }
        }
    }
}
