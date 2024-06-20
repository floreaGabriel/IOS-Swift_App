//
//  ProduseSalvatePage.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 20.06.2024.
//

import Foundation
import SwiftUI

struct ProduseSalvatePage: View {
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(
        entity: ProductItem.entity(),
        sortDescriptors: []
    ) private var salvateItems: FetchedResults<ProductItem>
    @StateObject private var salvatorDate = SalvatorDate()
    
    var body: some View {
        VStack {
            Text("Salvari")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)

            List {
                ForEach(salvateItems) { item in
                    HStack {
                        if let imageUrl = item.image_url, let url = URL(string: imageUrl) {
                            AsyncImage(url: url) { image in
                                image.resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 100)
                            } placeholder: {
                                ProgressView()
                            }
                        }
                        VStack(alignment: .leading) {
                            Text(item.name ?? "Unknown")
                                .font(.headline)
                            Text("Price: \(item.price ?? "N/A")")
                                .font(.subheadline)
                            Text("Sold: \(item.sales ?? "N/A")")
                                .font(.subheadline)
                        }
                        Spacer()
                        Button(action: {
                            withAnimation {
                                salvatorDate.removeFromCart(product: item)
                            }
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                    }
                }
                .onDelete(perform: deleteItems)
            }
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { salvateItems[$0] }.forEach(viewContext.delete)
            do {
                try viewContext.save()
            } catch {
                // Handle the Core Data error
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

struct ProduseSalvatePage_Previews: PreviewProvider {
    static var previews: some View {
        ProduseSalvatePage().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
