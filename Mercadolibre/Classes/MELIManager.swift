//
//  MELIManager.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class MELIManager {
    private static let _sharedInstance = MELIManager()
    
    public var localApplicationID: String = MELIErrors.Undefined
    public var localApplicationSecretKey: String = MELIErrors.Undefined
    public var localApplicationRedirectURI: String = MELIErrors.Undefined
    public var localApplicationNotificationsCallbackURL: String = MELIErrors.Undefined
    
    public class func sharedInstance() -> MELIManager {
        
        return _sharedInstance
        
    }
    
    private init() {} //This prevents others from using the default '()' initializer for this class.
    
    public class func getMELISites (completion: (sites:NSMutableArray?, success: Bool) -> ()) {
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest("sites", params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    print("\(object)")
                    let obtainedSites:NSArray = object as! NSArray;
                    let resultSites:NSMutableArray = NSMutableArray()
                    for rawSite in obtainedSites {
                        let site = MELISite.init(rawSite as! Dictionary<String, AnyObject>)
                        resultSites.addObject(site)
                        
                    }
                    completion(sites: resultSites, success: true)
                } else {
                    print("\(object)")
                    completion(sites: nil, success: false)
                }
            })
        }
    }
    
    public class func getSiteDomainInformationWithURL (siteDomainUrl:String, completion: (siteDomain:MELISiteDomain?, success: Bool) -> ()) {
        
        let fullPath = "site_domains/" + siteDomainUrl
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    print("\(object)")
                    
                    let obtainedSiteDomain = MELISiteDomain.init(object as! Dictionary<String, AnyObject>)
                    completion(siteDomain: obtainedSiteDomain, success: true)
                    
                } else {
                    print("\(object)")
                    completion(siteDomain: nil, success: false)
                }
            })
        }
    }
    
    public class func getSiteListingTypesWithId (siteID:String, completion: (listingTypes:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "sites/" + siteID + "/listing_types"
        
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
    
    
    public class func getSiteListingExposuresWithId (siteID:String?, completion: (listingExposures:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "sites/" + siteID! + "/listing_exposures"
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    
                    let obtainedExposures:NSArray = object as! NSArray;
                    let resultExposures:NSMutableArray = NSMutableArray()
                    for rawExposure in obtainedExposures {
                        let exposure = MELIListingExposure.init(rawExposure as! Dictionary<String, AnyObject>)
                        resultExposures.addObject(exposure)
                        
                    }
                    completion(listingExposures:resultExposures, success: true)
                    
                } else {
                    print("\(object)")
                    completion(listingExposures: nil, success: false)
                }
            })
        }
        
        
    }
    
    
    public class func getSiteCategoriesWithId (siteID:String?, completion: (siteCategories:NSMutableArray?, success: Bool) -> ()) {
        
        let fullPath = "sites/" + siteID! + "/categories"
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    
                    let obtainedCategories:NSArray = object as! NSArray;
                    let resultCategories:NSMutableArray = NSMutableArray()
                    for rawItem in obtainedCategories {
                        let category = MELICategory.init(rawItem as! Dictionary<String, AnyObject>)
                        resultCategories.addObject(category)
                        
                    }
                    completion(siteCategories:resultCategories, success: true)
                    
                } else {
                    print("\(object)")
                    completion(siteCategories: nil, success: false)
                }
            })
        }
        
        
    }

    
    
    
}
