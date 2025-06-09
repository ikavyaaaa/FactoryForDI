//
//  Item.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 09/06/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
