//
//  MovieDetailViewController.swift
//  MovieVapp
//
//  Created Haiyan Ma on 04/12/2017.
//  Copyright © 2017 Haiyan Ma. All rights reserved.
//
//  Template generated by Haiyan Ma @swiftTsubame
//

import UIKit

protocol MovieDetailViewInterface: class {
    var presenter: MovieDetailPresentation? { get set }
    func showNoMovieError()
    func showMovieDetail(movie: Movie)
}

class MovieDetailViewController: UIViewController {

	var presenter: MovieDetailPresentation?

    let nameLabel: UILabel = {
        let lb = UILabel()
        lb.numberOfLines = 1
        lb.textAlignment = .center
        lb.font = UIFont.boldSystemFont(ofSize: 24)
        return lb
    }()
    
    lazy var likeButton: UIButton = {
        let bn = UIButton()
        bn.addTarget(self, action: #selector(handleTapFavorite), for: .touchUpInside)
        return bn
    }()

    // MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        presenter?.prepareToShowMovieDetail()
    }

    // MARK: Setup View Components
    private func setupViews() {
        view.backgroundColor = .white
        view.addSubViewList(nameLabel, likeButton)
        nameLabel.fillSuperview()
        _ = likeButton.anchor(top: view.centerYAnchor, left: nil, bottom: nil, right: nil, topConstant: 10, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        likeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        likeButton.setImage(presenter?.isFavorite == true ? #imageLiteral(resourceName: "heart") : #imageLiteral(resourceName: "emptyHeart"), for: .normal)        
    }

    @objc func handleTapFavorite() {
        presenter?.toggleFavorite()
        likeButton.setImage(presenter?.isFavorite == true ? #imageLiteral(resourceName: "heart") : #imageLiteral(resourceName: "emptyHeart"), for: .normal)
    }
}

extension MovieDetailViewController: MovieDetailViewInterface {
    
    func showNoMovieError() {
        print("No movie was selected")
    }
    
    func showMovieDetail(movie: Movie) {
        nameLabel.text = movie.name
    }    
}
