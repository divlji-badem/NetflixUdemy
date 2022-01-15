//
//  Movie.swift
//  NetflixUdemy
//
//  Created by Jelena Tasic on 9.1.22..
//

import Foundation

struct Movie: Identifiable {
    
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
}
