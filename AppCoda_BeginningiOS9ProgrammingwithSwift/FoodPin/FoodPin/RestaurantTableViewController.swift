//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by daichao on 16/4/28.
//  Copyright © 2016年 com.daichao.*. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong",
        "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York",
        "New York", "New York", "New York", "New York", "New York", "New York",
        "London", "London", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian Causual Drink",
            "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American Seafood",
            "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee&Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats",
        "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina",
        "Donostia", "Royal Oak", "Thai Cafe"]
    
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg",
            "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg",
            "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg",
            "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg",
            "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg",
            "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
   override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
                super.viewDidLoad()
                self.tableView.separatorStyle = .None//去除每行之间的分割线
    }
    
   override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 150.0
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cellIdentifier="PersonalCell"
//            let cell=tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! PersonalCell
            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! PersonalCell
            cell.nameLabel?.text=restaurantNames[indexPath.row]
            cell.imageV?.image=UIImage(named: restaurantImages[indexPath.row])
            cell.typeLabel.text=restaurantTypes[indexPath.row]
            cell.locationLabel.text=restaurantLocations[indexPath.row]
        
//            cell.thumbnailImageView.layer.cornerRadius=30.0//图形变形的力度，值越大，变形力度越大
//            cell.thumbnailImageView.clipsToBounds=true
            //cell.accessoryType = .DisclosureIndicator
            return cell
    }
}
