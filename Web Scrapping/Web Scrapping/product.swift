//
//  product.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 18.06.2024.
//

import Foundation

struct Product: Identifiable, Decodable {
    var id: UUID
    var name: String
    var price: String
    var sales: String
    var image_url: String
    
    enum CodingKeys: String, CodingKey {
        case name, price, sales, image_url
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.price = try container.decode(String.self, forKey: .price)
        self.sales = try container.decode(String.self, forKey: .sales)
        self.image_url = try container.decode(String.self, forKey: .image_url)
        self.id = UUID()
    }
    
    // Adăugăm un initializer fără argumente pentru a evita problemele la decodare
        init(name: String, price: String, sales: String, image_url: String) {
            self.id = UUID()
            self.name = name
            self.price = price
            self.sales = sales
            self.image_url = image_url
        }
    
}
