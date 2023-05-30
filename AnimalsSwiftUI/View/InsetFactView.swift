//
//  InsetFactView.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 30/05/23.
//

import SwiftUI

struct InsetFactView: View {
    
    // MARK: - Propriedades
    let animal: Animal
    
    // MARK: - Body
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                } //: Loop
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        } //: Box
    }
}

// MARK: - Preview

struct InsetFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
