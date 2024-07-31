//
//  ContentView.swift
//  DarkLightMode
//
//  Created by Afnan Ahmed on 31/07/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var isDarkMode: Bool = false

    @State private var navigateNext: Bool = false
    
    var body: some View {
        VStack {
            NavigationLink(destination: HomeView(viewModel: HomeViewModelImpl()), isActive: $navigateNext){}.hidden()
            Text("This is testing view")
            Text("Current mode: \(colorScheme == .dark ? "Dark" : "Light")")
                .padding()
            Button(action: {
                isDarkMode.toggle()
                UIApplication.shared.windows.first?.overrideUserInterfaceStyle = isDarkMode ? .dark : .light
            }) {
                Text("Toggle Dark/Light Mode")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            Button(action: {
                navigateNext = true
            }) {
                Text("Go to Next Screen")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

