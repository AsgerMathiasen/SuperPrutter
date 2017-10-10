//
//  TableViewCell.swift
//  SuperPrutter
//
//  Created by Daniel Lambrecht on 10/10/2017.
//  Copyright © 2017 Asger Mathiasen. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var Emoji: UILabel!
    @IBOutlet weak var navn: UILabel!
    @IBOutlet weak var lugt: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
