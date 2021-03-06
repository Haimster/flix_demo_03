//
//  DetailViewController.swift
//  flix_demo_03
//
//  Created by Haimei Yang on 2/6/18.
//  Copyright © 2018 Haimei Yang. All rights reserved.
//

import UIKit
enum MovieKeys {
    static let title = "title"
    static let backdropPath = "backdrop_path"
    static let posterPath = "poster_path"
}

class DetailViewController: UIViewController {
    // Outlets
    @IBOutlet weak var backDropImageView: UIImageView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    //var movie: [String: Any]? //dictionary
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let movie = movie {
            /*
            titleLabel.text = movie[MovieKeys.title] as? String
            releaseDateLabel.text = movie["release_date"] as? String
            overviewLabel.text = movie["overview"] as? String
            let backdropPathString = movie[MovieKeys.backdropPath] as! String
            let posterPathString = movie[MovieKeys.posterPath] as! String
            let baseURLString = "https://image.tmdb.org/t/p/w500"
            
            let backdropURL = URL(string: baseURLString + backdropPathString)!
            backDropImageView.af_setImage(withURL: backdropURL)
            let posterPathURL = URL(string: baseURLString + posterPathString)!
            posterImageView.af_setImage(withURL: posterPathURL)*/
            titleLabel.text = movie.title
            releaseDateLabel.text = movie.releaseDate
            overviewLabel.text = movie.overview
            posterImageView.af_setImage(withURL: movie.posterUrl!)
            backDropImageView.af_setImage(withURL: movie.backDropUrl!)
            
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
