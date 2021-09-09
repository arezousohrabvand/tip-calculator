//
//  ViewController.swift
//  Lab04
//
//  Created by user196985 on 7/23/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    // define an array of values which I want to be displayed
    let movieName = ["Just go With it", "Love Romance", "Star is Born", "The Vow","Things I Hate"]
    let year = ["2020", "2018", "2019", "2017","2021"]
    let images = ["justgowithit", "loveromance", "starisborn", "thevow","thingsihate"]
    let genres=["Comedy","Romance","Drama","Romance","Comedy"]
    let directors=["Dennis Dougan","Olivia Martin","David Selznik","Micheal Sucsy","Gil Junger"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movieName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let tempCell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        tempCell.NameLabel.text = movieName[indexPath.row]
        tempCell.yearLabel.text = year[indexPath.row]
        tempCell.genreLabel.text = genres[indexPath.row]
        tempCell.directorLabel.text=directors[indexPath.row]
        tempCell.movieImage.image = UIImage(named: images[indexPath.row] + ".jpg" )
        
        return tempCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let moviedetailVC:MovieDetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "MovieDetailViewController") as! MovieDetailViewController
      
        moviedetailVC.movieTitle = movieName[indexPath.row]
        moviedetailVC.yearReleased = year[indexPath.row]
        moviedetailVC.movieType=genres[indexPath.row]
        moviedetailVC.movieDirector=directors[indexPath.row]
        moviedetailVC.movieImg = UIImage(named: images[indexPath.row] + ".jpg" )!
       
        self.navigationController?.pushViewController(moviedetailVC, animated: true)
    }

}

