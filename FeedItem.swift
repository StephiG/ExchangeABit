//
//  FeedItem.swift
//  ExchangeABit
//
//  Created by Stephi Goering on 19/09/15.
//  Copyright © 2015 Stephi Goering. All rights reserved.
//

import Foundation
import CoreData

@objc(FeedItem)
class FeedItem: NSManagedObject {

    
    @NSManaged var caption: String
    @NSManaged var image: NSData
    
}
