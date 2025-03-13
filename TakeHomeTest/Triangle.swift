//
//  Triangle.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//
import SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Define the points for the triangle
        let topPoint = CGPoint(x: rect.midX, y: rect.minY)
        let leftPoint = CGPoint(x: rect.minX, y: rect.maxY)
        let rightPoint = CGPoint(x: rect.maxX, y: rect.maxY)

        // Move to the top point, then add lines to the left and right points
        path.move(to: topPoint)
        path.addLine(to: leftPoint)
        path.addLine(to: rightPoint)
        path.closeSubpath() // Close the path to form the triangle

        return path
    }
}
