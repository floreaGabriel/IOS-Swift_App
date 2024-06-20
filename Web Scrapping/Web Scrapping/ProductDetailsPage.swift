//
//  ProductDetailsPage.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 20.06.2024.
//

import Foundation
import SwiftUI

struct ProductDetailsPage : View {
    
    @EnvironmentObject var salvatorManager: SalvatorDate
    var product: Product
    
    var body : some View {
        
        VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: product.image_url)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 200)
                    } placeholder: {
                        ProgressView()
                    }
                    Text(product.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.vertical)
                    Text("Price: \(product.price)")
                        .font(.headline)
                    Text("Sold: \(product.sales)")
                        .font(.subheadline)
                    Spacer()
                    Button(action: {
                            salvatorManager.addToCart(product: product)
                        }) {
                            Text("Save Product")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding()
                    Link(destination: URL(string: product.product_url)!) {
                            Text("Vezi produsul pe pagina web")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                        }
                        .padding(.top)
                }
                .padding()
                .navigationTitle("Product Detail")
            }
        }

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleProduct = Product(
            id: UUID(),
            name: "Sample Product",
            price: "$0.00",
            sales: "0 sold",
            image_url: "https://via.placeholder.com/150",
            product_url: "https://www.example.com"

        )
        ProductDetailsPage(product: sampleProduct)
    }
}