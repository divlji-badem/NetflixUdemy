//
//  GlobalHelpers.swift
//  NetflixUdemy
//
//  Created by Jelena Tasic on 9.1.22..
//

import Foundation
import SwiftUI

enum GlobalHelpers {}

extension GlobalHelpers {
    static let exampleMovie1 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        numberOfSeasons: 1,
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel"
    )
    static let exampleMovie2 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        numberOfSeasons: 2,
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
        promotionHeadline: "Best Rated Show"
    )
    
    static let exampleMovie3 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        numberOfSeasons: 3, defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel"
    )
    static let exampleMovie4 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        numberOfSeasons: 4,
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
        promotionHeadline: "New episodes coming soon"
    )
    static let exampleMovie5 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        numberOfSeasons: 5,
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel"
    )
    static let exampleMovie6 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        numberOfSeasons: 6,
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
        promotionHeadline: "Whatch Season 6 Now"
    )
    static let exampleMovie7 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel"
    )
    static let exampleMovie8 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/308")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel"
    )
    static let exampleMovie9 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/309")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel"
    )
    static let exampleMovie10 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/310")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"],
        year: 2020,
        rating: "TV-MA",
        defaultEpisodeInfo: exampleEpisodeInfo1,
        creators: "Bran Bo Odan, Jantje Friese",
        cast: "Louis Hofman, Oliver Masucci, Jordis Triebel"
    )
    static let examples = [
        exampleMovie1,
        exampleMovie2,
        exampleMovie3,
        exampleMovie4,
        exampleMovie5,
        exampleMovie6,
        exampleMovie7,
        exampleMovie8,
        exampleMovie9,
        exampleMovie10
    ]
    
    static let exampleEpisodeInfo1 = CurrentEpisodeInfo(
        episodeName: "Beginnings and Ending",
        description: "Sixs months after the disapppearances, the police from a task force",
        season: 2,
        episode: 1)
}

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

