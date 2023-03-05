//
//  SuperKneeApp.swift
//  SuperKnee
//
//  Created by nate wert on 3/4/23.
//

import SwiftUI

@main
struct SuperKneeApp: App {
    @StateObject var forceDataManager: ForceDataManager = ForceDataManager()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(forceDataManager)
        }
    }
}
