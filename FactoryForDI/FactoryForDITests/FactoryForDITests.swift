//
//  FactoryForDITests.swift
//  FactoryForDITests
//
//  Created by Kavya Krishna on 09/06/25.
//

// MessageViewModelTests.swift

import Foundation
import Factory
import Testing
@testable import FactoryForDI

struct MessageViewModelTests {
    
    @Test
    func testLoadMessageWithMock() {
        // Setup
        let container = Container()
        container.messageService.register { MockMessageService() }
        let viewModel = MessageViewModel(service: container.messageService())
        // Act
        viewModel.loadMessage()
        // Assert
        #expect(viewModel.message == "Hello from Test")
    }
}

struct LiveServiceTests {
    @Test
    func testLiveServiceReturnsFactoryMessage() {
        let liveService = LiveMessageService()
        let message = liveService.getMessage()
        #expect(message == "Hello from Factory!")
    }
}
