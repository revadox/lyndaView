//
//  CustomCell.swift
//  lyndaView
//
//  Created by darshan on 29/12/17.
//  Copyright © 2017 darshan. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
