//
//  GalleryView.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 29/05/23.
//

import SwiftUI

struct GalleryView: View {
    
    // MARK: - Propriedades
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // let gridLayout: [GridItem] = [
    //     GridItem(.flexible()),
    //     GridItem(.flexible()),
    //     GridItem(.flexible())
    // ]
    
    // Efficient Grid Definition
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // MARK: - Grid
            
            
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                ForEach(animals) { item in
                    Image(item.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 1))
                } //: Loop
            } //: Grid
        } //: Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - Preview

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
