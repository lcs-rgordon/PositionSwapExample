//
//  NumberView.swift
//  PositionSwapExample
//
//  Created by Russell Gordon on 2023-10-31.
//

import SwiftUI

struct NumberView: View, Identifiable {
    
    // MARK: Stored properties
    let number: Int
    let id = UUID()
    
    // MARK: Computed properties
    var body: some View {
        Text("\(number)")
            .font(.title)
    }
}

#Preview {
    NumberView(number: 7)
        .frame(width: 100, height: 100)
}
