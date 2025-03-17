//
//  TakeHomeTestApp.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

@main
struct TakeHomeTestApp: App {
    
    let viewModel = ShapeViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
