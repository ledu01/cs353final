//
//  AddListViewController.swift
//  ShopCart
//
//  Created by HoangDucLe on 5/11/16.
//  Copyright © 2016 HoangDucLe. All rights reserved.
//

import UIKit

class AddListViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var newItemMGR: ItemManager = ItemManager()
    
    @IBOutlet weak var listName: UITextField!
    
    
    @IBAction func enterList(sender: AnyObject) {
        listMGR.addList(listName.text!, itemMGR: newItemMGR, price: 0)
        self.view.endEditing(true)
        listName.text = ""
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
