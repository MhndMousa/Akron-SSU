//
//  CardArticleCell.swift
//  SSUAkron
//
//  Created by Muhannad Mousa on 3/24/18.
//  Copyright © 2018 Muhannad Mousa. All rights reserved.
//

import UIKit

class CardArticleCell: UITableViewCell {

    @IBOutlet weak var card: CardArticle!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        
        //set cell to initial state here
        //set like button to initial state - title, font, color, etc.
    }
    
}
