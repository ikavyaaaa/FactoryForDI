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
    @StateObject var viewModel: MessageViewModel
    @State private var showDetail = false

    init(container: Container = Container.shared) {
        let service = container.messageService()
        _viewModel = StateObject(wrappedValue: MessageViewModel(service: service))
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text(viewModel.message)
                    .font(.title)
                    .padding()

                Button("Load Message") {
                    viewModel.loadMessage()
                }

                Button("Go to Detail") {
                    viewModel.loadMessage()
                    showDetail = true
                }
            }
            .navigationTitle("Home")
            .padding()
            .navigationDestination(isPresented: $showDetail) {
                MessageDetailView(message: viewModel.message)
            }
        }
    }
}

