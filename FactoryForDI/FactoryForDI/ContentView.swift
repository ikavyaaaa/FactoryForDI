//
//  ContentView.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 09/06/25.
//

// ContentView.swift

import SwiftUI
import Factory

struct ContentView: View {
    @StateObject private var viewModel: MessageViewModel

    init(container: Container = Container.shared) {
        let service = container.messageService()
        _viewModel = StateObject(wrappedValue: MessageViewModel(service: service))
    }

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.message)
                .font(.largeTitle)
                .padding()

            Button("Load Message") {
                viewModel.loadMessage()
            }
        }
    }
}
