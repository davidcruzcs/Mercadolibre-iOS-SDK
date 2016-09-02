//
//  MELICategory.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 9/1/16.
//
//

import Foundation

public class MELICategory: NSObject {
    
    public var id: String?
    
    public var name: String?
    
    public var permalink: String?
    
    public var total_items_in_this_category: Int?
    
    public var path_from_root: NSArray?
    
    public var children_categories: NSArray?
    
    public var attributable: Int?
    
    public var picture: String?
    
    override init () {
        super.init()
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String
    }
    
    
    public func loadMoreCategoryInformation (completion: (success: Bool) -> ()) {
        
        let fullPath = "categories/" + id!
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    print("\(object)")
                    
                    let dictionary = object as! Dictionary<String, AnyObject>
                    
                    self.picture = dictionary["picture"] as? String
                    self.attributable = dictionary["atributable"] as? Int
                    self.permalink = dictionary["permalink"] as? String
                    self.total_items_in_this_category = dictionary["total_items_in_this_category"] as? Int
                    self.children_categories = dictionary["children_categories"] as? NSArray
                    self.path_from_root = dictionary["path_from_root"] as? NSArray
                    
                    completion(success: true)
                    
                } else {
                    print("\(object)")
                    completion(success: false)
                }
            })
        }
    }
}

