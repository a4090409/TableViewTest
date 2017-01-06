//
//  RestaurantTableViewController.swift
//  TableViewTest
//
//  Created by ChinBuck on 2017/1/5.
//  Copyright © 2017年 ChinBuck. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {

    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petite Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats", "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donostia", "Royal Oak", "Thai Cafe"]
    
    var restaurantImages = ["cafedeadend.jpg", "homei.jpg", "teakha.jpg", "cafeloisl.jpg", "petiteoyster.jpg", "forkeerestaurant.jpg", "posatelier.jpg", "bourkestreetbakery.jpg", "haighschocolate.jpg", "palominoespresso.jpg", "upstate.jpg", "traif.jpg", "grahamavenuemeats.jpg", "wafflewolf.jpg", "fiveleaves.jpg", "cafelore.jpg", "confessional.jpg", "barrafina.jpg", "donostia.jpg", "royaloak.jpg", "thaicafe.jpg"]
    
    var restaurantLocations = ["Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Hong Kong", "Sydney", "Sydney", "Sydney", "New York", "New York", "New York", "New York", "New York", "New York", "New York", "London", "London", "London", "London"]
    
    var restaurantTypes = ["Coffee & Tea Shop", "Cafe", "Tea House", "Austrian / Causual Drink", "French", "Bakery", "Bakery", "Chocolate", "Cafe", "American / Seafood", "American", "American", "Breakfast & Brunch", "Coffee & Tea", "Coffee & Tea", "Latin American", "Spanish", "Spanish", "Spanish", "British", "Thai"]
    
       var restaurantIsVisited = [Bool](repeating: false, count: 21)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restaurantNames.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellid, for: indexPath) as! RestaurantCellTableViewCell
        
        cell.NameLabel.text = restaurantNames[(indexPath as NSIndexPath).row]
        cell.LocationLabel.text = restaurantLocations[(indexPath as NSIndexPath).row]
        cell.ImageView.image =  UIImage(named: restaurantImages[(indexPath as NSIndexPath).row])
        cell.accessoryType = restaurantIsVisited[(indexPath as NSIndexPath).row] ? .checkmark : .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionMenue = UIAlertController(title: "", message: "what do you want", preferredStyle: .actionSheet)
        
        let cancelbutton = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        optionMenue.addAction(cancelbutton)
        
        let callH =
        {
            (action:UIAlertAction)->Void in
            let alertService = UIAlertController(title: "Service is not fund", message: "no call", preferredStyle: .alert)
            let alert = UIAlertAction(title: "ok", style:.default, handler: nil)
            alertService.addAction(alert)
            self.present(alertService, animated: true, completion: nil)
            
        }
        
        let phonecall = UIAlertAction(title: "call", style: .default, handler: callH)
        
        optionMenue.addAction(phonecall)
        
        let IsVist = (restaurantIsVisited[(indexPath as NSIndexPath).row]) ? "I  dont have been here" : "I  have check"
        let checkItem = UIAlertAction(title: IsVist, style: .default, handler: {
            (action:UIAlertAction!)->Void in
            
            let cell = tableView.cellForRow(at: indexPath)
            self.restaurantIsVisited[(indexPath as NSIndexPath).row] = (self.restaurantIsVisited[(indexPath as NSIndexPath).row]) ? false : true
            cell?.accessoryType = (self.restaurantIsVisited[(indexPath as NSIndexPath).row]) ? .checkmark : .none
            }
        )
        
        
        optionMenue.addAction(checkItem)
        self.present(optionMenue, animated: true, completion: nil)
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
