//
//  BirdCell.swift
//  AngryBirds
//
//  Created by Shixian Fang on 6/30/20.
//  Copyright © 2020 Shixian Fang. All rights reserved.
//

import UIKit

class BirdCell: UITableViewCell {
    @IBOutlet weak var BirdNameLabel: UILabel!
    @IBOutlet weak var BirdDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
