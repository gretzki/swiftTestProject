//
//  ContentView.swift
//  swiftTestProject
//
//  Created by Gretzki, Christopher on 13.10.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewmodel: ViewModel = ViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("\(viewmodel.ticker)")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
