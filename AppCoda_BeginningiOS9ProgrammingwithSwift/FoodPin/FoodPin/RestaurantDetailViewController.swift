//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by daichao on 16/5/8.
//  Copyright © 2016年 com.daichao.*. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var tableView:UITableView!
    
//    var restaurantImage = ""
//    var name = ""
//    var type = ""
//    var location = ""
    var restaurant:Restaurant!
//    @IBOutlet var namelabel:UILabel!
//    
//    @IBOutlet var typelabel:UILabel!
//    
//    @IBOutlet var locationlabel:UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        restaurantImageView.image=UIImage(named:restaurant.image)
        tableView.backgroundColor=UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        tableView.tableFooterView=UIView(frame: CGRectZero)
        tableView.separatorColor=UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        title=restaurant.name
        tableView.estimatedRowHeight=36.0
        tableView.rowHeight=UITableViewAutomaticDimension
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe=false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! RestaurantDetailTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text="Name"
            cell.valueLabel.text=restaurant.name
        case 1:
            cell.fieldLabel.text="Type"
            cell.valueLabel.text=restaurant.type
        case 2:
            cell.fieldLabel.text="Location"
            cell.valueLabel.text=restaurant.location
        
        case 3:
            cell.fieldLabel.text="Phone"
            cell.valueLabel.text=restaurant.phoneNumber
        case 4:
            cell.fieldLabel.text="Been Here"
            cell.valueLabel.text=restaurant.isVisited ? "Yes,I've been here before" : "No"
        default:
            cell.fieldLabel.text=""
            cell.valueLabel.text=""
            
        }
        cell.backgroundColor=UIColor.clearColor()
        return cell
    }
    
    @IBAction func close(segue:UIStoryboardSegue){
        
       
        
    }
    
    
    
}
