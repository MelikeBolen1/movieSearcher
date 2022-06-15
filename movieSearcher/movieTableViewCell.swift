//
//  movieTableViewCell.swift
//  movieSearcher
//
//  Created by Melike Bolen on 6/15/22.
//

import UIKit

class movieTableViewCell: UITableViewCell {
    
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieYearLabel: UILabel!
    @IBOutlet var moviePosterImageView: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    static let identifier = "movieTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: "movieTableViewCell",
                     bundle: nil)
    }

    func configure(with model: Movie) {
        self.movieTitleLabel.text = model.Title
        self.movieYearLabel.text = model.Year
        let url = model.Poster
        if let data = try? Data(contentsOf: URL(string: url)!) {
            self.moviePosterImageView.image = UIImage(data: data)
        }
    }
    
}
