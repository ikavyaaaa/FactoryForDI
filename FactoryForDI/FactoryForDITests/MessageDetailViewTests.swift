//
//  MessageDetailViewTests.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 10/06/25.
//

import SwiftUI
import Factory
import Testing
@testable import FactoryForDI

struct MessageDetailViewTests {

    @Test
    func testDetailViewDisplaysCorrectMessage() {
        let testMessage = "Preview Test Message"
        let view = MessageDetailView(message: testMessage)
        #expect(view.message == testMessage)
    }
}
