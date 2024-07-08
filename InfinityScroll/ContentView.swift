//
//  ContentView.swift
//  InfinityScroll
//
//  Created by Samir on 07.07.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var items = Array(0..<20) // Начальный массив с элементами
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(items, id: \.self) { index in
                    ComplexCell()
                        .onAppear {
                            if index == items.count - 1 { // Если последний элемент достигнут, добавляем новые элементы
                                loadMoreItems()
                            }
                        }
                }
            }
        }
    }
    
    private func loadMoreItems() {
        let newItems = (items.count..<(items.count + 20))
        items.append(contentsOf: newItems)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

