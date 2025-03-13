//
//  GridView.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

struct GridView: View {
    
    // Define the grid's layout
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    enum Shape {
        case circle, square, triangle
    }
    
    var currentShape = Shape.triangle
    
    var body: some View {
        // A grid container
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(0..<15, id: \.self) { index in
                            // Create a circle shape for each grid item
                            if currentShape == .circle {
                                Circle()
                                    .fill(Color.blue)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        Text("\(index + 1)")
                                            .foregroundColor(.white)
                                    )
                            } else if currentShape == .square {
                                Rectangle()
                                    .fill(Color.blue)
                                    .frame(width: 50, height: 50)
                                    .overlay(
                                        Text("\(index + 1)")
                                            .foregroundColor(.white)
                                    )
                            } else {
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
    GridView()
}
