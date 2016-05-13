//
//  deletedItem.swift
//  ShopCart
//
//  Created by HoangDucLe on 5/11/16.
//  Copyright © 2016 HoangDucLe. All rights reserved.
//

import UIKit

var deletedMGR: DeletedManager = DeletedManager()

struct deleted {
    var name = "Un-Named"
    var price: Int = 0
}

class DeletedManager: NSObject {
    var deleteds = [deleted]()
    
    func addDeleted(name: String, price: Int) {
        deleteds.append(deleted(name: name, price: price))
    }
    
}