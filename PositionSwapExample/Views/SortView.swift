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
        VStack {
            Grid {
                GridRow {
                    Text("Index")
                    Text("Value")
                }
                .font(.title)
                .bold()
                .padding(.bottom, 5)
                
                // NOTE: Referred to this page to for how to iterate over the collection
                //       and obtain the index, or position, of each element
                //       https://alejandromp.com/blog/swiftui-enumerated/
                ForEach(Array(dataSet.enumerated()), id: \.element.id) { index, element in
                    GridRow {
                        Text("\(index)")
                            .font(.title)
                        element
                    }
                    .padding(.bottom, 2)
                }
            }
            .padding()
            
            Button(action: {
                withAnimation(.easeIn(duration: 0.1)) {
                    let temp = dataSet[0]
                    dataSet[0] = dataSet[1]
                    dataSet[1] = temp
                }
            }, label: {
                Text("Swap")
            })
            
            Spacer()
        }
        .frame(width: 200, height: 400)
    }
}

#Preview {
    SortView()
}
