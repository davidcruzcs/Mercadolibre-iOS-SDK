//
//  MELISiteDomain.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 9/1/16.
//
//

import Foundation

public class MELISiteDomain: NSObject {
    
    var site_id:String?
    var country_id:String?
    var locale:String?
    var tag:String?
    var id:String?
    
    override init () {
        super.init()
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        tag = dictionary["tag"] as? String
        locale = dictionary["locale"] as? String
        country_id = dictionary["country_id"] as? String
        site_id = dictionary["site_id"] as? String
        
    }
    
}