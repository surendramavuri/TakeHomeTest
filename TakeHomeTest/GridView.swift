//
//  GridView.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

struct GridView: View {
    
    @EnvironmentObject private var viewModel: ShapeViewModel
    // Define the grid's layout
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    var isCirclesOnly: Bool

    
    var body: some View {
        // A grid container
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(0..<viewModel.shapes.count, id: \.self) { index in
                            // Create a circle shape for each grid item
                            if viewModel.shapes[index].name == "Circle"  {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        Text("\(index + 1)")
                                            .foregroundColor(.white)
                                    )
                                   
                            } else if viewModel.shapes[index].name == "Square" && !isCirclesOnly {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        Text("\(index + 1)")
                                            .foregroundColor(.white)
                                    )
                            } else if viewModel.shapes[index].name == "Triangle" && !isCirclesOnly {
                                Triangle()
                                    .fill(Color.blue)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        Text("\(index + 1)")
                                            .foregroundColor(.white)
                                    )
                            }
                        }
                    }
                    .padding()
                }
    }
}

#Preview {
    GridView(isCirclesOnly: false)
}
