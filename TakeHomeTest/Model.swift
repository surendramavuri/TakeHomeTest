//
//  Model.swift
//  TakeHomeTest
//
//  Created by Sri Satish M on 3/11/25.
//

import Foundation
import SwiftUI

struct Shapes:  Identifiable,Codable {
    var id = UUID()  // Unique ID for each button
    var name: String
    var draw_path: String
    
    enum CodingKeys: String, CodingKey {
            case name
            case draw_path
        }
}

struct ButtonContainer: Codable {
    var buttons: [Shapes]
}
