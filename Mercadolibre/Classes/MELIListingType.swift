//
//  MELIListingType.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 9/1/16.
//
//

import Foundation

public class MELIListingType: NSObject {
    
    var id: String?
    var site_id: String?
    var name: String?
    
    override init () {
        super.init()
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String
        site_id = dictionary["site_id"] as? String
        
    }
    
}
