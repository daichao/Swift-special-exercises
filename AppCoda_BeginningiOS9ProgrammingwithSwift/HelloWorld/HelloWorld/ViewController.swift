//
//  ViewController.swift
//  HelloWorld
//
//  Created by daichao on 16/4/15.
//  Copyright © 2016年 com.daichao.*. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(sender: UIButton) {
        let alert=UIAlertController(title: "Welcome to iOS World!", message: "你好戴超", preferredStyle: .Alert)
        let action=UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }

}

