//
//  ContentView.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import SwiftUI

struct ContentView: View {
    
    var p1View = Page1View()
    var body: some View {

            p1View
     
    }
}

#Preview {
    ContentView(p1View: Page1View())
}
