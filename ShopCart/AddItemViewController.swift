	//
//  AddItemViewController.swift
//  ShopCart
//
//  Created by HoangDucLe on 5/11/16.
//  Copyright © 2016 HoangDucLe. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        initializeTextField()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var myxMGR: ItemManager = ItemManager()
	
    var userEntered: Bool = false
    
    @IBOutlet weak var itemName: UITextField!

    @IBOutlet weak var priceName: UITextField!
    
    @IBAction func enterItem(sender: AnyObject) {
        myxMGR.addItem(itemName.text!, price: Int(priceName.text!)!)
        self.view.endEditing(true)
        itemName.text = ""
        priceName.text = ""
        userEntered = true
    }
    
    func initializeTextField() {
        priceName.delegate = self
        priceName.keyboardType = UIKeyboardType.NumberPad
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
