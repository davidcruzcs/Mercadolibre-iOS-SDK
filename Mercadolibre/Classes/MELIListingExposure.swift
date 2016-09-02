//
//  MELIListingExposure.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 9/1/16.
//
//

import Foundation

public class MELIListingExposure: NSObject {
    
    var id: String?
    var home_page: Bool?
    var name: String?
    var category_home_page: Bool?
    var advertising_on_listing_page: Bool?
    var priority_in_search: Int?
    
    override init () {
        super.init()
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String
        home_page = dictionary["home_page"] as? Bool
        category_home_page = dictionary["category_home_page"] as? Bool
        advertising_on_listing_page = dictionary["advertising_on_listing_page"] as? Bool
        priority_in_search = dictionary["priority_in_search"] as? Int
        
    }
    
}
