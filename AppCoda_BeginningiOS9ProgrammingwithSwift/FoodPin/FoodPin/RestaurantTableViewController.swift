//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by daichao on 16/4/28.
//  Copyright © 2016年 com.daichao.*. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop",
        location: "G/F,72 Po Hing Fong, Sheung Wan, Hong Kong", phoneNumber: "232-923423", image:
        "cafedeadend.jpg", isVisited: false),
        Restaurant(name: "Homei", type: "Cafe", location:
            "Shop B, G/F, 22-24A Tai Ping San Street SOHO, Sheung Wan, Hong Kong", phoneNumber: "348-233423", image:
        "homei.jpg", isVisited: false),
        Restaurant(name: "Teakha", type: "Tea House", location:
            "Shop B, 18 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phoneNumber: "354-243523", image:
        "teakha.jpg", isVisited: false),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location:
        "Shop B, 20 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phoneNumber:
            "453-333423", image: "cafeloisl.jpg", isVisited: false),
        Restaurant(name: "Petite Oyster", type: "French", location: "24 Tai Ping Shan Road SOHO, Sheung Wan, Hong Kong", phoneNumber: "983-284334", image:
        "petiteoyster.jpg", isVisited: false),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Shop J-K., 200 Hollywood Road, SOHO, Sheung Wan, Hong Kong", phoneNumber: "232-434222", image: "forkeerestaurant.jpg", isVisited: false),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "G/F, 62 Po Hing Fong, Sheung Wan, Hong Kong", phoneNumber: "234-834322", image:
        "posatelier.jpg", isVisited: false),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location:
        "633 Bourke St Sydney New South Wales 2010 Surry Hills", phoneNumber: "982-434343",
        image: "bourkestreetbakery.jpg", isVisited: false),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location:
       "412-414 George St Sydney New South Wales", phoneNumber: "734-232323", image:
        "haighschocolate.jpg", isVisited: false),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location:
        "Shop 1 61 York St Sydney New South Wales", phoneNumber: "872-734343", image:
        "palominoespresso.jpg", isVisited: false),
        Restaurant(name: "Upstate", type: "American", location:
        "95 1st Ave New York, NY 10003", phoneNumber: "343-233221", image: "upstate.jpg", isVisited:
        false),
        Restaurant(name: "Traif", type: "American", location:
           "229 S 4th St Brooklyn, NY 11211", phoneNumber: "985-723623", image: "traif.jpg", isVisited:
            false),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch",
            location: "445 Graham Ave Brooklyn, NY 11211", phoneNumber: "455-232345",
            image: "grahamavenuemeats.jpg", isVisited: false),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location:
           "413 Graham Ave Brooklyn, NY 11211", phoneNumber: "434-232322", image:
            "wafflewolf.jpg", isVisited: false),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location:
           "18 Bedford Ave Brooklyn, NY 11222", phoneNumber: "343-234553", image: "fiveleaves.jpg",
            isVisited: false),
        Restaurant(name: "Cafe Lore", type: "Latin American", location:
           "Sunset Park 4601 4th Ave Brooklyn, NY 11220", phoneNumber: "342-455433", image:
            "cafelore.jpg", isVisited: false),
        Restaurant(name: "Confessional", type: "Spanish", location:
          "308 E 6th St  New York, NY 10003", phoneNumber: "643-332323", image: "confessional.jpg",
            isVisited: false),
        Restaurant(name: "Barrafina", type: "Spanish", location:
           "54 Frith Street London W1D 4SL United Kingdom", phoneNumber: "542-343434", image:
            "barrafina.jpg", isVisited: false),
        Restaurant(name: "Donostia", type: "Spanish", location:
           "10 Seymour Place London W1H 7ND United Kingdom", phoneNumber: "722-232323", image:
            "donostia.jpg", isVisited: false),
        Restaurant(name: "Royal Oak", type: "British", location:
           "2 Regency Street London SW1P 4BZ United Kingdom", phoneNumber: "343-988834", image:
            "royaloak.jpg", isVisited: false),
        Restaurant(name: "Thai Cafe", type: "Thai", location:
           "22 Charlwood Street London SW1V 2DY Pimlico", phoneNumber: "432-344050", image: "thaicafe.jpg",
            isVisited: false)
        ]

    
    
    
    
//   override func prefersStatusBarHidden() -> Bool {
//        return true
//    }
    
    override func viewDidLoad() {
                super.viewDidLoad()
                //self.tableView.separatorStyle = .None//去除每行之间的分割线
        navigationItem.backBarButtonItem=UIBarButtonItem(title: "", style: .Plain, target: nil, action: nil)
            tableView.estimatedRowHeight=80.0
            tableView.rowHeight=UITableViewAutomaticDimension
        
    }
    override func  viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnSwipe=true
    }
    
    
   override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 80.0
    }
    
    
    
//    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        let optionMenu=UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .ActionSheet)
//        
//        let cancelAction=UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
//        /**
//         *闭包
//         * 
//         */
//        let callActionHandler = {(action:UIAlertAction!)->Void in
//        let alertMessage=UIAlertController(title: "Service Unavailable", message: "Sorry,the call feature is not available yet. Please retry later.",preferredStyle: .Alert)
//            alertMessage.addAction(UIAlertAction(title: "OK",style: .Default,handler: nil))
//            self.presentViewController(alertMessage, animated: true, completion: nil)
//        }
//        let callAction=UIAlertAction(title: "Call "+" 123-000-\(indexPath.row)",style:UIAlertActionStyle.Default,handler:callActionHandler)
//        let cell=tableView.cellForRowAtIndexPath(indexPath)
//        if cell?.accessoryType == .Checkmark{
//            let isNotVisitedAction=UIAlertAction(title: "I've not been here", style: .Default, handler: {
//                (action :UIAlertAction)->Void in
//                let cell=tableView.cellForRowAtIndexPath(indexPath)
//                cell?.accessoryType = .None
//                self.restaurantIsVisited[indexPath.row]=false
//            })
//            optionMenu.addAction(isNotVisitedAction)
//        }
//        else{
//            let isVisitedAction=UIAlertAction(title: "I've been here",style: .Default,handler: {
//                            (action:UIAlertAction)->Void in
//                            let cell=tableView.cellForRowAtIndexPath(indexPath)
//                            cell?.accessoryType = .Checkmark
//                            self.restaurantIsVisited[indexPath.row]=true
//                        })
//            optionMenu.addAction(isVisitedAction)
//            
//        }
//
//        optionMenu.addAction(callAction)
//        
//        optionMenu.addAction(cancelAction)
//        self.presentViewController(optionMenu, animated: true, completion: nil)
//        tableView.deselectRowAtIndexPath(indexPath, animated: true)
//    }
    
    
  
    
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            restaurants.removeAtIndex(indexPath.row)
        
        }
        
        //tableView.reloadData()
        
        tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        
        
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        //Social Sharing Button
        let shareAction=UITableViewRowAction(style: .Default, title: "Share", handler:
            {(action,indexPath)->Void in
                let defaultText="Just checking in at " + self.restaurants[indexPath.row].name
                
                
                if let imageToShare = UIImage(named:self.restaurants[indexPath.row].image){
                    
                    let activityController=UIActivityViewController(activityItems: [defaultText,imageToShare], applicationActivities: nil)
                    self.presentViewController(activityController, animated: true, completion: nil)
                }
                
                
        })
        
        //Delete Button
        let deleteAction = UITableViewRowAction(style: .Default, title: "Delete", handler: {
        (action,indexPath)->Void in
            // Delete the row from the data source
            self.restaurants.removeAtIndex(indexPath.row)
//            self.restaurantLocations.removeAtIndex(indexPath.row)
//            self.restaurantTypes.removeAtIndex(indexPath.row)
//            self.restaurantIsVisited.removeAtIndex(indexPath.row)
//            self.restaurantImages.removeAtIndex(indexPath.row)
            
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        })
        
        
        shareAction.backgroundColor=UIColor(red: 28.0/255.0, green: 165.0/255.0,
                                            blue: 253.0/255.0, alpha: 1.0)
        deleteAction.backgroundColor=UIColor(red: 202.0/255.0, green: 202.0/255.0,blue:203.0/255.0,alpha:1.0)
        
        return [shareAction,deleteAction]
    }
    
    
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

//            let cellIdentifier="PersonalCell"
        let cellIdentifier="Cell"
            let cell=tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! RestaurantTableViewCell
//            let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier) as! PersonalCell
            cell.nameLabel?.text=restaurants[indexPath.row].name
            cell.thumbnailImageView.image=UIImage(named: restaurants[indexPath.row].image)
            cell.typeLabel.text=restaurants[indexPath.row].type
            cell.locationLabel.text=restaurants[indexPath.row].location

        
//            cell.thumbnailImageView.layer.cornerRadius=30.0//图形变形的力度，值越大，变形力度越大
//            cell.thumbnailImageView.clipsToBounds=true
            //cell.accessoryType = .DisclosureIndicator

        cell.accessoryType = self.restaurants[indexPath.row].isVisited ? .Checkmark : .None

            return cell
    }
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destinationViewController as! RestaurantDetailViewController
                destinationController.restaurant=restaurants[indexPath.row]
            }
        }
    }
    
    
    
    
    
    
}
