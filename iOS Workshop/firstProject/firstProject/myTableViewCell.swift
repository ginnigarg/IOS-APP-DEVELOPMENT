//
//  myTableViewCell.swift
//  firstProject
//
//  Created by Guneet on 29/06/17.
//  Copyright © 2017 Ginni. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet var imageVC : UIImageView!
    @IBOutlet var nameLabel : UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
