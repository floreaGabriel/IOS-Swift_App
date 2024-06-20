//
//  PersistenceController.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 20.06.2024.
//

import Foundation
import CoreData

class PersistenceController {
    static let shared = PersistenceController()

    static var preview: PersistenceController = {
            let result = PersistenceController(inMemory: true)
            let viewContext = result.container.viewContext
            for _ in 0..<10 {
                let newItem = ProductItem(context: viewContext)
                newItem.id = UUID()
                newItem.name = "Sample Product"
                newItem.price = "$0.00"
                newItem.sales = "0 sold"
                newItem.image_url = "https://via.placeholder.com/150"
            }
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
            return result
        }()
    
    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "SalvareDateModel")
        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }
        container.loadPersistentStores { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }

    func saveContext() {
        let context = container.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}
