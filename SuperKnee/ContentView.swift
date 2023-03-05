//
//  ContentView.swift
//  SuperKnee
//
//  Created by nate wert on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var forceDataManager: ForceDataManager
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
