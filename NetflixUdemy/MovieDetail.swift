//
//  MovieDetail.swift
//  NetflixUdemy
//
//  Created by Jelena Tasic on 15.1.22..
//

import SwiftUI

struct MovieDetail: View {
    let movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }.padding(.horizontal, 22)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubHeadline(movie: movie)
                        if let promotionHeadline = movie.promotionHeadline {
                            Text(promotionHeadline)
                                .bold()
                                .font(.headline)
                        }
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            //
                        }.padding(.horizontal, 20)
                        
                    }
                }
                Spacer()
            }
        }.foregroundColor(.white)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: GlobalHelpers.exampleMovie2)
    }
}

struct MovieInfoSubHeadline: View {
    var movie: Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            ReitingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct ReitingView: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}
