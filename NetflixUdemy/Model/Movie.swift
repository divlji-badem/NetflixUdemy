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
    
    // Personalisation
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
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
    
    var episodeInfoDisplayed: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplayed: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
