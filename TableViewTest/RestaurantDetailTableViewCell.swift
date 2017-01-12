//
//  RestaurantDetailTableViewCell.swift
//  TableViewTest
//
//  Created by ChinBuck on 2017/1/10.
//  Copyright © 2017年 ChinBuck. All rights reserved.
//

import UIKit

class RestaurantDetailTableViewCell: UITableViewCell {

    
    @IBOutlet var FieldLabel:UILabel!
    @IBOutlet var ValueLabel:UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
