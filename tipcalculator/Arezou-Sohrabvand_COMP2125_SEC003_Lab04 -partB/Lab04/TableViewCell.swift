//
//  TableViewCell.swift
//  Lab04
//
//  Created by user196985 on 7/23/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    //outlets
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
