//
//  ContentViewTests.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 10/06/25.
//

import SwiftUI
import Factory
import Testing
@testable import FactoryForDI

struct ContentViewTests {

    @Test
    func testInitialStateOfContentView() {
        let container = Container()
        container.messageService.register { MockMessageService() }
        let view = ContentView(container: container)
        view.viewModel.loadMessage()
        #expect(view.viewModel.message == "Hello from Test")
    }
}
