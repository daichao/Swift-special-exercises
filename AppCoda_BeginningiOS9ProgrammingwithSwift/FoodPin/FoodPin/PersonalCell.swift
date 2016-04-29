//
//  PersonalCell.swift
//  FoodPin
//
//  Created by daichao on 16/4/29.
//  Copyright © 2016年 com.daichao.*. All rights reserved.
//

import UIKit

class PersonalCell: UITableViewCell {

    var imageV : UIImageView?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var typeLabel: UILabel!
    
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        
//    
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageV = UIImageView.init(frame: self.contentView.frame)
        self.contentView.insertSubview(imageV!, belowSubview: nameLabel)
        imageV?.contentMode = .ScaleAspectFill
        
    }
}
