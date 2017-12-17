//
//  MovieDetailRouter.swift
//  MovieVapp
//
//  Created Haiyan Ma on 04/12/2017.
//  Copyright © 2017 Haiyan Ma. All rights reserved.
//
//  Template generated by Haiyan Ma @swiftTsubame
//

import UIKit

protocol MovieDetailRouting: class {
}

class MovieDetailRouter: MovieDetailRouting {
    private let container: MovieDetailDependencyContainer
    init(container: MovieDetailDependencyContainer = MovieDetailDependencyContainer()) {
        self.container = container
    }
}