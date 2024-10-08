//
//  ContentView.swift
//  Weather_app
//
//  Created by Stellone Olivier on 28/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .foregroundStyle(Color.blue)
        }
        .padding()
    }
    
}

#Preview {
    ContentView()
}
