//
//  ContentView.swift
//  iExpense
//
//  Created by Matthew Richardson on 21/8/20.
//  Copyright © 2020 Matthew Richardson. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    
    
    var body: some View {
        Button("Tap count \(self.tapCount)") {
            self.tapCount += 1
            UserDefaults.standard.set(self.tapCount, forKey: "Tap")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
