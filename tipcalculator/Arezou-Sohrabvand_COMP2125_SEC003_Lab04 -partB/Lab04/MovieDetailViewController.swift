//
//  MovieDetailViewController.swift
//  Lab04
//
//  Created by user196985 on 7/23/21.
//

import UIKit

class MovieDetailViewController: UIViewController {
    //outlets
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
   //local variables
    var movieTitle:String!
    var yearReleased:String!
    var movieImg:UIImage!
    var movieType:String!
    var movieDirector:String!
    override func viewDidLoad() {
        super.viewDidLoad()
    // assign values to the outlets
        NameLabel.text = movieTitle
        yearLabel.text = yearReleased
        movieImage.image = movieImg
        genreLabel.text=movieType
        directorLabel.text=movieDirector
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
