//
//  RestaurantDetailViewController.swift
//  TableViewTest
//
//  Created by ChinBuck on 2017/1/8.
//  Copyright © 2017年 ChinBuck. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet var restaurantImageView:UIImageView!
    @IBOutlet var tableview:UITableView!
    var restautantNameSourec = ""
    var restaurantLocationSource = ""
    var restaurantImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = restautantNameSourec
        
        tableview.backgroundColor = UIColor(red: 240/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        
        tableview.separatorColor = UIColor(red: 240/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        restaurantImageView.image = UIImage(named: restaurantImage)
        
        tableview.estimatedRowHeight = 60
        tableview.rowHeight = UITableViewAutomaticDimension
    }
    override func viewDidAppear(_ animated: Bool) {
        
        tableview.reloadData()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantDetailTableViewCell
        
        switch indexPath.row
        {
        case 0 :
            cell.FieldLabel.text = "Name"
            cell.ValueLabel.text = restautantNameSourec
        case 1 :
            cell.FieldLabel.text = "Location"
            cell.ValueLabel.text = restaurantLocationSource
       /* case 2 :
            cell.FieldLabel.text = "Location"
            cell.ValueLabel.text = restautantNameSourec
        case 3 :
            cell.FieldLabel.text = "Been here"
            cell.ValueLabel.text = restautantNameSourec*/
        default :
            cell.FieldLabel.text = ""
            cell.ValueLabel.text = ""

            
        }
        
        cell.backgroundColor = UIColor.clear
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
