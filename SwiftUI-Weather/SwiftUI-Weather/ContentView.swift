//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Akshit Saxena on 11/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello world!")
                Button(action: {
                    // Your action code here
                }) {
                    Text("My Button")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
