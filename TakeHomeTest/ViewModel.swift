//
//  ViewModel.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import Foundation
import SwiftUI

class ShapeViewModel: ObservableObject {
    @Published var shapes: [Shapes] = [] // Holds the fetched data.
    @Published var isLoading = false // Indicates loading state.
    @Published var errorMessage: String? = nil // Holds any error message.

    func fetchShapes() async {
        guard let url = URL(string: "http://staticcontent.cricut.com/static/test/shapes_001.json") else {
            errorMessage = "Invalid URL"
            return
        }
        
        isLoading = true
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            let decodedShapes = try JSONDecoder().decode(ButtonContainer.self, from: data)
            print("Data is \(decodedShapes)")
            shapes = decodedShapes.buttons
        } catch {
            errorMessage = "Failed to fetch data: \(error.localizedDescription)"
            print(errorMessage)
        }
        
        isLoading = false
    }
}
