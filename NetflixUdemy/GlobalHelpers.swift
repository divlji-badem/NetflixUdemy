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
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie2 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    
    static let exampleMovie3 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie4 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie5 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie6 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie7 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/307")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie8 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/308")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie9 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/309")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
    )
    static let exampleMovie10 = Movie(
        id: UUID().uuidString,
        name: "DARK",
        thumbnailURL: URL(string: "https://picsum.photos/200/310")!,
        categories: ["Destopian", "Exciting", "Supenseful", "Sci-Fi TV"]
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
}

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

