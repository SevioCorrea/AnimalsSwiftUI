//
//  VideoModel.swift
//  AnimalsSwiftUI
//
//  Created by Sévio Basilio Corrêa on 31/05/23.
//

import SwiftUI



struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    
    var thumbnail: String {
        "video-\(id)"
    }
}
