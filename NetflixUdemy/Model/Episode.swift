//
//  Episode.swift
//  NetflixUdemy
//
//  Created by Jelena Tasic on 15.1.22..
//

import Foundation

struct Episode: Identifiable {
    
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        URL(string: thumbnailImageURLString)!
    }
}
