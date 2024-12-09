//
//  challengeApp.swift
//  challenge
//
//  Created by Ousmane on 04/12/24.
//

import SwiftUI
import SwiftData

@main
struct challengeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().modelContainer(for: Model.self)
        }
    }
}
