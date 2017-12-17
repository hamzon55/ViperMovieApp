//
//  Movie.swift
//  MovieVapp
//
//  Created by Haiyan Ma on 01/12/2017.
//  Copyright © 2017 Haiyan Ma. All rights reserved.
//

import Foundation

struct Movie {
    let name: String
    let rating: Float
    var isFavorite: Bool = false
    
    init(name: String, rating: Float, isFavorite: Bool = false) {
        self.name = name
        self.rating = rating
        self.isFavorite = isFavorite
    }
}