//
//  MessageViewModel.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 09/06/25.
//

import SwiftUI

class MessageViewModel: ObservableObject {
    @Published var message: String = ""
    private let service: MessageService

    init(service: MessageService) {
        self.service = service
    }

    func loadMessage() {
        message = service.getMessage()
    }
}
