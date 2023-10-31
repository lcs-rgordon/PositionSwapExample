//
//  SortView.swift
//  PositionSwapExample
//
//  Created by Russell Gordon on 2023-10-31.
//

import SwiftUI

struct SortView: View {
    
    // MARK: Stored properties
    @State var dataSet: [NumberView] = [
        NumberView(number: 10),
        NumberView(number: 7),
    ]
    
    // MARK: Computed properties
    var body: some View {
        HStack(spacing: 20) {
            ForEach(dataSet) { view in
                view
            }
        }
        .frame(width: 400, height: 200)
    }
}

#Preview {
    SortView()
}
