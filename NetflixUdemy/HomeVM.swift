//
//  HomeVM.swift
//  NetflixUdemy
//
//  Created by Jelena Tasic on 9.1.22..
//

import Foundation

class HomeVM: ObservableObject {
    
    // category : movies
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map { String($0) }
    }
    
    public func getMovies(forCategory category: String) -> [Movie] {
        movies[category] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    public func setupMovies() {
        movies["TrendingNow"] = GlobalHelpers.examples
        movies["Stand-Up Comedy"] = GlobalHelpers.examples.shuffled()
        movies["New Releases"] = GlobalHelpers.examples.shuffled()
        movies["Watch It Again"] = GlobalHelpers.examples.shuffled()
        movies["Sci-Fi Movies"] = GlobalHelpers.examples.shuffled()
    }
}
