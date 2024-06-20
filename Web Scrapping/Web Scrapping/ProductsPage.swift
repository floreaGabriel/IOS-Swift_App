//
//  ProductsPage.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 18.06.2024.
//

import SwiftUI

struct ProductsPage : View {
    
    @State private var products: [Product] = []
    @State private var searchText: String = ""
    var body: some View {
        
        VStack {
            
            Text("Produsele Best Sellers")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
            
            TextField("Cauta produse", text: $searchText)
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal)

            List(filteredProducts) { product in
                NavigationLink(destination: ProductDetailsPage(product: product)) {
                        HStack {
                            AsyncImage(url: URL(string: product.image_url)) { image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 100)
                            } placeholder: {
                                ProgressView()
                            }
                            VStack(alignment: .leading) {
                                Text(product.name)
                                    .font(.headline)
                                Text("Price: \(product.price)")
                                    .font(.subheadline)
                                Text("Sold: \(product.sales)")
                                    .font(.subheadline)
                            }
                        }
                    }
                }
                .onAppear{
                    fetchProducts()
                }
            }
                    }
    
    var filteredProducts: [Product] {
            if searchText.isEmpty {
                return products
            } else {
                return products.filter { $0.name.lowercased().contains(searchText.lowercased()) }
            }
        }
    
    func fetchProducts() {
        guard let url = URL(string: "http://172.20.10.5:8080/products") else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)
        print("Fetching products from URL: \(url)")

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Error fetching products: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                print("No data received")
                return
            }
            
            // Log the raw data as a string for debugging
            if let jsonString = String(data: data, encoding: .utf8) {
                print("Received JSON: \(jsonString)")
            }

            do {
                let decodedResponse = try JSONDecoder().decode([Product].self, from: data)
                DispatchQueue.main.async {
                    self.products = decodedResponse
                    print("Products fetched successfully: \(self.products)")
                }
            } catch {
                print("Failed to decode response: \(error.localizedDescription)")
            }
        }.resume()
    }
}




struct ProductsPage_Previews: PreviewProvider {
    static var previews: some View {
        ProductsPage()
    }
}
