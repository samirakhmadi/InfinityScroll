//
//  RoundedShape.swift
//  InfinityScroll
//
//  Created by Samir on 07.07.2024.
//

import SwiftUI

struct RoundedShape: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(style: StrokeStyle(lineWidth: 2, dash: [5]))
            .frame(width: 100, height: 100)
    }
}

