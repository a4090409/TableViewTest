//
//  RestaurantCellTableViewCell.swift
//  TableViewTest
//
//  Created by ChinBuck on 2017/1/5.
//  Copyright © 2017年 ChinBuck. All rights reserved.
//

import UIKit

class RestaurantCellTableViewCell: UITableViewCell {

    
    @IBOutlet var NameLabel:UILabel!
    @IBOutlet var LocationLabel:UILabel!
    @IBOutlet var ImageView:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
