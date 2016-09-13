//
//  MELICountry.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 9/13/16.
//
//

import Foundation
public class MELICountry: NSObject {

    
    public var id: String?

    public var name: String?
    
    public var locale: String?
    
    public var currency_id: String?
    
    
    public var decimal_separator: String?
    
    public var thousands_separator: String?
    
    public var time_zone: String?
    
    public var geo_information: String?
    
    public var states:NSArray?
    
    
    override init () {
        super.init()
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String
        locale = dictionary["locale"] as? String
        currency_id = dictionary["currency_id"] as? String
    }
    
    
    public func loadMoreCountryInformation (completion: (success: Bool) -> ()) {
        
        let fullPath = "countries/" + id!
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    print("\(object)")
                    
                    let dictionary = object as! Dictionary<String, AnyObject>
                    
                    self.decimal_separator = dictionary["decimal_separator"] as? String
                    self.thousands_separator = dictionary["thousands_separator"] as? String
                    self.time_zone = dictionary["time_zone"] as? String
                    self.geo_information = dictionary["geo_information"] as? String
                    self.states = dictionary["states"] as? NSArray
                    
                    completion(success: true)
                    
                } else {
                    print("\(object)")
                    completion(success: false)
                }
            })
        }
    }
    
    
    
    
    
}