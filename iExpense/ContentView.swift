//
//  ContentView.swift
//  iExpense
//
//  Created by Matthew Richardson on 21/8/20.
//  Copyright © 2020 Matthew Richardson. All rights reserved.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Matthew"
    @Published var secondName = "Richardson"
}

struct ContentView: View {
    
    @ObservedObject private var user = User()
    var body: some View {
        VStack {
            Text("Your name is \(user.firstName) \(user.secondName)")
            TextField("First name", text: $user.firstName)
            TextField("Second name", text: $user.secondName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
