//
//  CustomGridView.swift
//  CustomGridSwiftUI
//
//  Created by ALEKSEY SUSLOV on 17.04.2021.
//

import SwiftUI

struct CustomGridView<Content, T>: View where Content: View {
    let items: [T]
    let columns: Int
    let content: (CGFloat, T) -> Content
    
    var rows: Int {
        items.count / columns
    }
    
    var body: some View {
        GeometryReader { geometry in
            let itemSize = geometry.size.width / CGFloat(columns)
            ScrollView {
                VStack {
                    ForEach(0...rows, id: \.self) { rowIndex in
                        HStack(spacing: 0) {
                            ForEach(0..<columns) { columnIndex in
                                if let index = indexFor(row: rowIndex, column: columnIndex) {
                                    content(itemSize, items[index])
                                } else {
                                    Spacer()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    
    private func indexFor(row: Int, column: Int) -> Int? {
        let index = row * columns + column
        return index < items.count ? index : nil
    }
}

struct CustomGridView_Previews: PreviewProvider {
    static var previews: some View {
        CustomGridView(items: [11, 3, 7, 17, 5, 2, 1], columns: 3) { itemSize, item in
            HStack {
                Text("\(item)")
                Text("\(item)")
            }
            .frame(width: itemSize, height: itemSize)
        }
    }
}
