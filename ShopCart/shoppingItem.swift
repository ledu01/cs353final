//
//  shoppingItem.swift
//  ShopCart
//
//  Created by HoangDucLe on 5/10/16.
//  Copyright © 2016 HoangDucLe. All rights reserved.
//

import UIKit

//var itemMGR: ItemManager = ItemManager()

struct item {
    var name = "Un-Named"
    var price: Int = 0
}

class ItemManager: NSObject {
    var items = [item]()
    
    func addItem(name: String, price: Int) {
        items.append(item(name: name, price: price))
    }
    
}