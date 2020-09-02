//
//  MovieViewCell.swift
//  Manoj-MVVM-Demo
//
//  Created by Manoj Gadamsetty on 03/08/20.
//  Copyright © 2020 Manoj Gadamsetty. All rights reserved.
//

import UIKit

class MovieViewCell: UITableViewCell {

    //MARK:- XIB Oulets
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    var movieItem: Movie? {
        didSet {
            if let movie = movieItem {
                self.titleLabel.text = movie.title ?? ""
                self.overviewLabel.text = movie.overview ?? ""
                self.picture.setImage(withImageId: movie.poster_path ?? "", placeholderImage: #imageLiteral(resourceName: "placeholder"), size: .original)
                self.picture.contentMode = .scaleToFill
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization that only execute Onces
        selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
