//
//  Entity+CoreDataProperties.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 20.06.2024.
//
//

import Foundation
import CoreData


extension ProductItems {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ProductItems> {
        return NSFetchRequest<ProductItems>(entityName: "ProductItem")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var price: String?
    @NSManaged public var sales: String?
    @NSManaged public var image_url: String?

}

extension ProductItems : Identifiable {
}
