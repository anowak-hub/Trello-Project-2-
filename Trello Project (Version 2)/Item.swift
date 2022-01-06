//
//  Item.swift
//  Trello Project (Version 2)
//
//  Created by Andrew Nowak on 1/6/22.
//

import Foundation

class Item {
    
    var name: String = ""
    
    init() {
        
    }
    
    init(name: String) {
        self.name = name
    }
    
    enum ItemOperator {
        case names
    }
    
}
