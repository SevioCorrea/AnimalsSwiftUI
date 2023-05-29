//
//  ContentView.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 29/05/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Propriedades
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) {animal in
                    AnimalListItemView(animal: animal)
                }
            } //: List
            .listStyle(PlainListStyle())
            .navigationBarTitle("Africa", displayMode: .large)
        } //: Navigation
    }
}

// MARK: - Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
