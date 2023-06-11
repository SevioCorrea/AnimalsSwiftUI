//
//  CreditsView.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 11/06/23.
//

import SwiftUI

struct CreditsView: View {

	// MARK: - Propriedades
    
    // MARK: - Body
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
    Copyright © Sévio
    All right reserved
    Better Apps ♡ Less Code
    """)
            .font(.footnote)
        .multilineTextAlignment(.center)
        } //: VStack
        .padding()
        .opacity(0.4)
    }
}

// MARK: - Preview

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
