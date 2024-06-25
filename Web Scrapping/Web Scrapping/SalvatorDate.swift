//
//  SalvatorDate.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 20.06.2024.
//

import Foundation
import CoreData
import SwiftUI
import UserNotifications

class SalvatorDate: ObservableObject {
    @Published var cartItems: [ProductItems] = []
    private let viewContext = PersistenceController.shared.container.viewContext

    init() {
        loadCartItems()
    }

    func addToCart(product: Product) {
        let newItem = ProductItem(context: viewContext)
        newItem.id = UUID()
        newItem.name = product.name
        newItem.price = product.price
        newItem.sales = product.sales
        newItem.image_url = product.image_url
        
        saveContext()
        loadCartItems()
    }

    func loadCartItems() {
        let request: NSFetchRequest<ProductItems> = ProductItems.fetchRequest()
        do {
            cartItems = try viewContext.fetch(request)
        } catch {
            print("Failed to fetch items: \(error.localizedDescription)")
        }
    }

    private func saveContext() {
        PersistenceController.shared.saveContext()
    }
    
    
    func removeFromCart(product: ProductItem) {
            viewContext.delete(product)
            saveContext()
            loadCartItems()
        }
    
    

    func programNotification(for product: Product) {
        let content = UNMutableNotificationContent()
        content.title = "Produs Salvat"
        content.body = "Ai salvat produsul \(product.name)."
        content.sound = .default

        // Programează notificarea sa apara dupa 5 secunde (pentru testare)
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Eroare la programarea notificării: \(error.localizedDescription)")
            }
        }
    }

}

