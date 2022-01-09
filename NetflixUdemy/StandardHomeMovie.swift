//
//  StandardHomeMovie.swift
//  NetflixUdemy
//
//  Created by Jelena Tasic on 9.1.22..
//

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: GlobalHelpers.exampleMovie1)
    }
}
