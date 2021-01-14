//
//  IPTesterApp.swift
//  IPTester
//
//  Created by Christopher Alford on 14.01.21.
//

import SwiftUI

@main
struct IPTesterApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
