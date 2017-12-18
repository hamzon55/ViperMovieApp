//
//  MovieDetailInteractor.swift
//  MovieVapp
//
//  Created Haiyan Ma on 04/12/2017.
//  Copyright © 2017 Haiyan Ma. All rights reserved.
//
//  Template generated by Haiyan Ma @swiftTsubame
//

import Foundation

protocol MovieDetailInteraction: class, MovieFavoritable {
    var movie: Movie? { get set }
}

class MovieDetailInteractor: MovieDetailInteraction {
    var movie: Movie?
    internal var movies: [Movie]?
}

