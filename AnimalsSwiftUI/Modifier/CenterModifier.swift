//
//  CenterModifier.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 11/06/23.
//

import SwiftUI



struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
