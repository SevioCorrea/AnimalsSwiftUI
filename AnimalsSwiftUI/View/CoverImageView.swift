//
//  CoverImageView.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 29/05/23.
//

import SwiftUI

struct CoverImageView: View {
    
    // MARK: - Propriedades
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        
    }
}

// MARK: - Preview

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
