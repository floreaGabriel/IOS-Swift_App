//
//  Web_ScrappingApp.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 18.06.2024.
//

import SwiftUI

@main
struct Web_ScrappingApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject private var salvatorDate = SalvatorDate()
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(salvatorDate)
        }
    }
}

