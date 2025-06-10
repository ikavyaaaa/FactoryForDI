//
//  FactoryForDITests.swift
//  FactoryForDITests
//
//  Created by Kavya Krishna on 09/06/25.
//

// MessageViewModelTests.swift

import Factory
import Testing
@testable import FactoryForDI

struct MessageViewModelTests {
    
    @Test
    func testLoadMessageWithMockService() {
        let container = Container()
        container.messageService.register { MockMessageService() }
        let viewModel = MessageViewModel(service: container.messageService())
        viewModel.loadMessage()
        #expect(viewModel.message == "Hello from Test")
    }

    @Test
    func testLoadMessageWithLiveService() {
        let viewModel = MessageViewModel(service: LiveMessageService())
        viewModel.loadMessage()
        #expect(viewModel.message == "Hello from Factory!")
    }
}


