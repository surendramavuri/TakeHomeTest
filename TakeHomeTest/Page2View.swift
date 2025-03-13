//
//  Page2View.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

struct Page2View: View {
    var body: some View {
        
        
        GridView()
        
        
        HStack {
            
            Button(action: {
                // Action to be performed when the button is tapped
                print("Delete All")
            }) {
                Text("Delete All")
                    .foregroundColor(Color.blue)
            }
            .padding()
            Spacer()
            Button(action: {
                // Action to be performed when the button is tapped
                print("Add")
            }) {
                Text("Add")
                    .foregroundColor(Color.blue)
            }
            .padding()
            Spacer()
            Button(action: {
                // Action to be performed when the button is tapped
                print("Remove")
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
