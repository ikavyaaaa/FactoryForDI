//
//  Untitled.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 09/06/25.
//

import Factory

extension Container {
    var messageService: Factory<MessageService> {
        Factory(self) { MockMessageService() }
    }
}
