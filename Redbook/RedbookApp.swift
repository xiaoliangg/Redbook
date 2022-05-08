//
//  RedbookApp.swift
//  Redbook
//
//  Created by yl on 2022/4/5.
//

import SwiftUI

@main
struct RedbookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
