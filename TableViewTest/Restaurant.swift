//
//  Restaurant.swift
//  TableViewTest
//
//  Created by ChinBuck on 2017/1/8.
//  Copyright © 2017年 ChinBuck. All rights reserved.
//

import Foundation

class Restaurant
{
    
    var name = ""
    var type = ""
    var location = ""
    var image = ""
    var isVisted = false
    
    init(name:String,type:String,location:String,image:String,isVisted:Bool)
    {
        self.name = name
        self.type = type
        self.image = image
        self.isVisted = isVisted
        self.location = location
    }
    
}




