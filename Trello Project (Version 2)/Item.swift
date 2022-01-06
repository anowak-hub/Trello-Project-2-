//
//  Item.swift
//  Trello Project (Version 2)
//
//  Created by Andrew Nowak on 1/6/22.
//

import Foundation

class Item {
    
    var names: [String]
    
    init(names: [String]) {
        self.names = names
    }
    
    enum ItemOperator {
        case names
    }
    
}
