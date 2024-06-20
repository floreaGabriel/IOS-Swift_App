//
//  ContentView.swift
//  Web Scrapping
//
//  Created by Gabriel Florea on 18.06.2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @EnvironmentObject var salvatorManager: SalvatorDate
    
    var body: some View {
        NavigationView {
            ZStack{
                Image("background").resizable().ignoresSafeArea().opacity(0.6)
                
                VStack{
                    Text("SALES SPY")
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                        .foregroundColor(Color.white)
                        .shadow(color: .blue, radius: 10, x: 0, y: 5)
                        .padding(.top, 50)
                    
                    Spacer()
                    
                    NavigationLink(destination: ProductsPage()) {
                        Text("Afiseaza produsele")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ProduseSalvatePage().environmentObject(salvatorManager)) {
                        Text("Vezi produsele salvate")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(10)
                    }

                    Spacer()
                }
                
            }
        }
        .navigationBarHidden(true)
        
    }
}



#Preview {
    ContentView()
}
