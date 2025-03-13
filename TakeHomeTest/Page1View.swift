//
//  Page1View.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

struct Page1View: View {
    @State private var isNavigating = false
    @StateObject private var viewModel = ShapeViewModel()
    
    var body: some View {
       
        NavigationView {
            
            VStack {
                
                VStack {
                    
                    if viewModel.isLoading {
                                       ProgressView("Loading...")
                                           .progressViewStyle(CircularProgressViewStyle())
                                   } else if let errorMessage = viewModel.errorMessage {
                                       Text("Error: \(errorMessage)")
                                           .foregroundColor(.red)
                                   } else {
                                       List(viewModel.shapes) { shape in
                                           Text(shape.name)
                                       }
                                   }
                }
               
                
                HStack {
                    
                    Button(action: {
                        // Action to be performed when the button is tapped
                        print("Clear All")
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
                
                
                GridView()
                
                
                HStack {
                    
                    Button(action: {
                        // Action to be performed when the button is tapped
                        print("Button1")
                    }) {
                        Text("Button1")
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                    Spacer()
                    Button(action: {
                        // Action to be performed when the button is tapped
                        print("Button2")
                    }) {
                        Text("Button2")
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                    Spacer()
                    Button(action: {
                        // Action to be performed when the button is tapped
                        print("Button3")
                    }) {
                        Text("Button3")
                            .foregroundColor(Color.blue)
                    }
                    .padding()
                    
                    
                }
            }
            
            .onAppear {
                            // Start fetching data when the view appears
                            Task {
                                await viewModel.fetchShapes()
                            }
                        }
            
            
        }
       
    }
}

#Preview {
    Page1View()
}
