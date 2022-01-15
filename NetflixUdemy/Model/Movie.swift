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
    
    // MovieDetailView
    var year: Int
    var rating: String
    // it can be movie
    var numberOfSeasons: Int?
    var episodes: Int?
    var promotionHeadline: String? 
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
}
