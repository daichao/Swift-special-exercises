//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by daichao on 16/5/20.
//  Copyright © 2016年 com.daichao.*. All rights reserved.
//

import UIKit


class ReviewViewController: UIViewController {
    @IBOutlet var  backgroundImageView:UIImageView!
    @IBOutlet var ratingStackView:UIStackView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: .Dark)
        let blurEffectView = UIVisualEffectView(effect : blurEffect)
        blurEffectView.frame=view.bounds
        backgroundImageView.addSubview(blurEffectView)
        ratingStackView.transform=CGAffineTransformMakeScale(1.0, 0.0)
        
        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.4, delay: 0.0,options: [],animations: {
            self.ratingStackView.transform=CGAffineTransformIdentity
        },completion: nil)
    }
    
    
    
    
    
    
    
}
