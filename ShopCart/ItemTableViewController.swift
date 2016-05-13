//
//  ItemTableViewController.swift
//  ShopCart
//
//  Created by HoangDucLe on 5/10/16.
//  Copyright © 2016 HoangDucLe. All rights reserved.
//

import UIKit

class ItemTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        self.tableView.reloadData()
    }
    
    var myMGR: ItemManager = ItemManager()
    var priceForList: Int = 0
    
    func getTotalPrice() -> Int {
        var totalPrice: Int = 0
        for section in 0..<tableView.numberOfSections {
            for row in 0..<tableView.numberOfRowsInSection(section) {
                let indexPath = NSIndexPath(forRow: row, inSection: section)
                totalPrice = totalPrice + myMGR.items[indexPath.row].price
            }
        }
        return totalPrice
    }
    
    @IBOutlet weak var listLabel: UILabel!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "AddItem" {
            if let AddItemVC = segue.destinationViewController as? AddItemViewController {
                if AddItemVC.userEntered == true {
                    self.tableView.reloadData()
                }
                AddItemVC.myxMGR = myMGR
            }
        }
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return myMGR.items.count
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            deletedMGR.addDeleted(myMGR.items[indexPath.row].name, price: myMGR.items[indexPath.row].price)
            myMGR.items.removeAtIndex(indexPath.row)
            self.tableView.reloadData()
        }
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ItemCell", forIndexPath: indexPath)

        cell.textLabel?.text = myMGR.items[indexPath.row].name
        cell.detailTextLabel?.text = "$" + "\(myMGR.items[indexPath.row].price)"

        return cell
    }
}

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


