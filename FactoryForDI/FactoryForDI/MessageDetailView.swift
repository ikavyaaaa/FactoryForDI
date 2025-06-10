//
//  MessageDetailView.swift
//  FactoryForDI
//
//  Created by Kavya Krishna on 10/06/25.
//


import SwiftUI

struct MessageDetailView: View {
    let message: String

    var body: some View {
        VStack(spacing: 16) {
            Text("Detail View")
                .font(.headline)

            Text(message)
                .font(.title)
                .padding()

            Spacer()
        }
        .navigationTitle("Message Detail")
        .padding()
    }
}
