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

protocol MovieDetailInteraction: class {
    var movie: Movie? { get set }
    func toggleFavorite()
}

class MovieDetailInteractor: MovieDetailInteraction {
    var movie: Movie?
    
    func toggleFavorite() {
        guard var movie = movie else { return }
        movie.isFavorite = !movie.isFavorite
        self.movie = movie
        updateMovieRepository(with: movie)
    }
    
    func updateMovieRepository(with newMovie: Movie) {
        let moviesNames = MovieRepository.shared.movies.map { $0.name }
        guard let index = moviesNames.index(of: newMovie.name) else { return }
        MovieRepository.shared.movies[index] = newMovie
    }
}
