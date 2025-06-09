//
//  MessageService.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 09/06/25.
//


protocol MessageService {
    func getMessage() -> String
}

class LiveMessageService: MessageService {
    func getMessage() -> String {
        return "Hello from Factory!"
    }
}

class MockMessageService: MessageService {
    func getMessage() -> String {
        return "Hello from Test"
    }
}

