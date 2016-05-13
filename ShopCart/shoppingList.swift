//
//  shoppingList.swift
//  ShopCart
//
//  Created by HoangDucLe on 5/10/16.
//  Copyright © 2016 HoangDucLe. All rights reserved.
//

import UIKit

var listMGR: ListManager = ListManager()

struct list {
    var name = "Un-Named"
    var itemMGR: ItemManager = ItemManager()
    var price = 0
}

class ListManager: NSObject {
    var lists = [list]()
    
    func addList(name: String, itemMGR: ItemManager, price: Int) {
        lists.append(list(name: name, itemMGR: itemMGR, price: price))
    }
    
}