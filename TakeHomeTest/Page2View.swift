//
//  Page2View.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

struct Page2View: View {
    
    @EnvironmentObject private var viewModel: ShapeViewModel
    
    var body: some View {
        
        
        GridView(isCirclesOnly: true)
        
        
        HStack {
            
            Button(action: {
                viewModel.shapes = viewModel.shapes.filter { $0.draw_path != "circle" }
            }) {
                Text("Delete All")
                    .foregroundColor(Color.blue)
            }
            .padding()
            Spacer()
            Button(action: {
                
                viewModel.shapes.append(Shapes(name: "Circle", draw_path: "circle"))
                
            }) {
                Text("Add")
                    .foregroundColor(Color.blue)
            }
            .padding()
            Spacer()
            Button(action: {
               
                if let index = viewModel.shapes.lastIndex(where: { $0.name == "Circle" }) {
                    viewModel.shapes.remove(at: index)
                }
               
            }) {
                Text("Remove")
                    .foregroundColor(Color.blue)
            }
            .padding()
            
            
        }
    }
}

#Preview {
    Page2View()
}
