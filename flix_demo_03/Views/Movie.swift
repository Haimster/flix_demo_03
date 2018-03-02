//
//  Movie.swift
//  flix_demo_03
//
//  Created by Haimei Yang on 2/28/18.
//  Copyright © 2018 Haimei Yang. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    
    var overview: String
    var releaseDate: String
    var posterPath: String
    var posterUrl: URL?
    var baseURLString: String
    var backDropUrl: URL?
    var backDropPath: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title"
        
        overview = dictionary["overview"] as? String ?? "No overview"
        releaseDate = dictionary["release_date"] as? String ?? "no date"
        posterPath = dictionary["poster_path"] as? String ?? ""
        baseURLString = "https://image.tmdb.org/t/p/w500"
        posterUrl = URL(string: baseURLString + posterPath)
        backDropPath = dictionary[MovieKeys.backdropPath] as? String ?? ""
        backDropUrl = URL(string: baseURLString + backDropPath)
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
}
