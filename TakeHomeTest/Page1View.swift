//
//  Page1View.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

struct Page1View: View {
    @State private var isNavigating = false
    //@StateObject private var viewModel = ShapeViewModel()
    @EnvironmentObject private var viewModel: ShapeViewModel
    
    @State var button1text = ""
   
    var body: some View {
       
        NavigationView {
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        // Action to be performed when the button is tapped
                        viewModel.shapes = []
                    }) {
                        Text("Clear All")
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                    Spacer()
                    
                    
                    VStack {
                        Button(action: {
                            isNavigating = true
                        }) {
                            Text("Edit Circles")
                                .foregroundColor(Color.blue)
                        }
                        .padding()
                    }
                    
                                    NavigationLink(destination: Page2View(), isActive: $isNavigating) {
                                        EmptyView()
                                    }
                    
                    
                }
                
                
                GridView(isCirclesOnly: false)
                
                
                HStack {
                    
                    if viewModel.buttonArray.count > 0 {
                        
                        Button(action: {
                            viewModel.shapes.append(Shapes(name: viewModel.buttonArray[0].name, draw_path: viewModel.buttonArray[0].draw_path))
                        }) {
                            Text(viewModel.buttonArray[0].name)
                                .foregroundColor(Color.blue)
                        }
                        .padding()
                    
                    Spacer()
                    Button(action: {
                        viewModel.shapes.append(Shapes(name: viewModel.buttonArray[1].name, draw_path: viewModel.buttonArray[1].draw_path))
                    }) {
                        Text(viewModel.buttonArray[1].name)
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                    Spacer()
                    Button(action: {
                        viewModel.shapes.append(Shapes(name: viewModel.buttonArray[2].name, draw_path: viewModel.buttonArray[2].draw_path))
                    }) {
                        Text(viewModel.buttonArray[2].name)
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                    
                    }
                    
                }
            }
            
            .onAppear {
                // Start fetching data when the view appears
                if viewModel.shapes.count == 0 {
                    Task {
                        await viewModel.fetchShapes()
                        if viewModel.buttonArray.count == 0 {
                            viewModel.buttonArray = viewModel.shapes
                        }
                        
                    }
                }
            }
            
            
        }
       
    }
}

#Preview {
    Page1View()
}
