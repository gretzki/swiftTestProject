//
//  ViewModel.swift
//  swiftTestProject
//
//  Created by Gretzki, Christopher on 14.10.24.
//

import Foundation

// create viewmodel to observe to
class ViewModel: ObservableObject {
    @Published var ticker: Int = 3000
    
    init() {
        tick()
    }
    
    func tick() {
        ticker = ticker - 1
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now().advanced(by: DispatchTimeInterval.seconds(1))) {
            self.tick()
        }
    }
}
