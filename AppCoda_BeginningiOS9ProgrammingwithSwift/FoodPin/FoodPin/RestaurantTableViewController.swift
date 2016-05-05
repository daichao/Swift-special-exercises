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
    
    var restaurantIsVisited=[Bool](count: 21, repeatedValue: false)
    
    
    
    
   override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
                super.viewDidLoad()
                //self.tableView.separatorStyle = .None//去除每行之间的分割线
    }
    
   override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80.0
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let optionMenu=UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .ActionSheet)
        let cancelAction=UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
        let callActionHandler={(action:UIAlertAction) -> Void in
                let alertMessage=UIAlertController(title: "Service Unavailable", message: "Sorry,the call feature is not available yet.Please try later.", preferredStyle: .Alert)
                    alertMessage.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
                    self.presentViewController(alertMessage, animated: true, completion: nil)
        
        
        }
        let isVisitedAction=UIAlertAction(title: "I've been here", style: .Default, handler: {
            
            (action:UIAlertAction)->Void in
            let cell=tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType = .Checkmark
            self.restaurantIsVisited[indexPath.row]=true
            }
        )
        let isNotVisitedAction=UIAlertAction(title: "I've not been here", style: .Default, handler: {
            (action:UIAlertAction)->Void in
            let cell=tableView.cellForRowAtIndexPath(indexPath)
            cell?.accessoryType = .None
            self.restaurantIsVisited[indexPath.row]=false
            
        })
        
        let callAction=UIAlertAction(title: "Call "+" 123-000-\(indexPath.row)", style: .Default, handler: callActionHandler)
        optionMenu.addAction(callAction)
        optionMenu.addAction(cancelAction)
        
        if restaurantIsVisited[indexPath.row]{
            //let cell=tableView.cellForRowAtIndexPath(indexPath)
            optionMenu.addAction(isNotVisitedAction)
        }else{
            optionMenu.addAction(isVisitedAction)
        }
        
        self.presentViewController(optionMenu, animated: true, completion: nil)
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            restaurantIsVisited.removeAtIndex(indexPath.row)
            restaurantLocations.removeAtIndex(indexPath.row)
            restaurantNames.removeAtIndex(indexPath.row)
            restaurantTypes.removeAtIndex(indexPath.row)
            restaurantImages.removeAtIndex(indexPath.row)
        }
        
        //tableView.reloadData()
        
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        
        print("Total item :\(restaurantNames.count)")
        for name in restaurantNames {
            print(name)
        }
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        //Share
        let ShareAction=UITableViewRowAction(style: .Default, title: "Share", handler:
            {
                (action,indexPath)-> Void in
                let defaultText="Just checking in at " + self.restaurantNames[indexPath.row]
                if let imageToShare = UIImage(named: self.restaurantImages[indexPath.row]){
                    let activityController=UIActivityViewController(activityItems: [defaultText,imageToShare], applicationActivities: nil)
                    self.presentViewController(activityController, animated: true, completion: nil)
                }
                
        })
        ShareAction.backgroundColor=UIColor(red: 28.0/255.0, green: 165.0/255.0, blue: 253.0/255.0, alpha: 1.0)
        
        //Delete
        let deleteAction=UITableViewRowAction(style: .Default, title: "Delete", handler: {
        (action,indexPath)->Void in
            self.restaurantIsVisited.removeAtIndex(indexPath.row)
             self.restaurantLocations.removeAtIndex(indexPath.row)
             self.restaurantNames.removeAtIndex(indexPath.row)
             self.restaurantTypes.removeAtIndex(indexPath.row)
             self.restaurantImages.removeAtIndex(indexPath.row)
        self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        })
        deleteAction.backgroundColor=UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 203.0/255.0, alpha: 1.0)
        
        
        
        return [deleteAction,ShareAction]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            let cellIdentifier="Cell"
            let cell=tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! RestaurantTableViewCell
//            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! PersonalCell
            cell.nameLabel?.text=restaurantNames[indexPath.row]
            cell.thumbnailImageView?.image=UIImage(named: restaurantImages[indexPath.row])
            cell.typeLabel.text=restaurantTypes[indexPath.row]
            cell.locationLabel.text=restaurantLocations[indexPath.row]
        
//            cell.thumbnailImageView.layer.cornerRadius=30.0//图形变形的力度，值越大，变形力度越大
//            cell.thumbnailImageView.clipsToBounds=true
            //cell.accessoryType = .DisclosureIndicator
        cell.accessoryType = restaurantIsVisited[indexPath.row] ? .Checkmark : .None
        
        
            return cell
    }
}
