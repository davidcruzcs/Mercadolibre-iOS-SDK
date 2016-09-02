//
//  MELISites.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class MELISite: NSObject {
    
    public var id: String?
    
    public var name: String?
    
    public var listingExposures = NSMutableArray()
    
    public var listingTypes = NSMutableArray()
    
    public var siteCategories = NSMutableArray()
    
    override init () {
        super.init()
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String

    }
    
    
    public func getSiteListingExposures (completion: (listingExposures:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "sites/" + id! + "/listing_exposures"
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    
                    let obtainedExposures:NSArray = object as! NSArray
                    for rawExposure in obtainedExposures {
                        let exposure = MELIListingExposure.init(rawExposure as! Dictionary<String, AnyObject>)
                        self.listingExposures.addObject(exposure)

                    }
                    completion(listingExposures:self.listingExposures, success: true)
                    
                } else {
                    print("\(object)")
                    completion(listingExposures: nil, success: false)
                }
            })
        }
        
        
            
        
    }

    public func getSiteListingTypes (completion: (listingTypes:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "sites/" + id! + "/listing_types"
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    
                    let obtainedTypes:NSArray = object as! NSArray
                    for rawType in obtainedTypes {
                        let type = MELIListingType.init(rawType as! Dictionary<String, AnyObject>)
                        self.listingTypes.addObject(type)
                    }
                    completion(listingTypes: self.listingTypes, success: true)
                    
                } else {
                    print("\(object)")
                    completion(listingTypes: nil, success: false)
                }
            })
        }
    }
    
    
    public func getSiteCategories(completion: (siteCategories:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "sites/" + id! + "/categories"
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    
                    let obtainedCategories:NSArray = object as! NSArray;
                    for rawItem in obtainedCategories {
                        let category = MELICategory.init(rawItem as! Dictionary<String, AnyObject>)
                        self.siteCategories.addObject(category)
                        
                    }
                    completion(siteCategories:self.siteCategories, success: true)
                    
                } else {
                    print("\(object)")
                    completion(siteCategories: nil, success: false)
                }
            })
        }
        
        
    }
    

    
    
}
