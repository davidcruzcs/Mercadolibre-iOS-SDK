//
//  MELISites.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class MELISite: NSObject {
    
    var id: String?
    var name: String?
    
    override init () {
        super.init()
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        name = dictionary["name"] as? String

    }
    
    public func siteListingExposures (completion: (listingExposures:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "/sites/" + id! + "/listing_exposures"
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    print("\(object)")
                    
                    let obtainedExposures:NSArray = object as! NSArray;
                    let resultExposures:NSMutableArray = NSMutableArray()
                    for rawType in obtainedExposures {
                        let type = MELIListingExposure.init(rawType as! Dictionary<String, AnyObject>)
                        resultExposures.addObject(type)
                        
                    }
                    completion(listingExposures:resultExposures, success: true)
                    
                } else {
                    print("\(object)")
                    completion(listingExposures: nil, success: false)
                }
            })
        }
            
        
    }

    public func siteListingTypes (completion: (listingTypes:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "/sites/" + id! + "/listing_types"
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    print("\(object)")
                    
                    let obtainedTypes:NSArray = object as! NSArray;
                    let resultTypes:NSMutableArray = NSMutableArray()
                    for rawType in obtainedTypes {
                        let type = MELIListingType.init(rawType as! Dictionary<String, AnyObject>)
                        resultTypes.addObject(type)
                        
                    }
                    completion(listingTypes: resultTypes, success: true)
                    
                } else {
                    print("\(object)")
                    completion(listingTypes: nil, success: false)
                }
            })
        }
    }
    
    
}
