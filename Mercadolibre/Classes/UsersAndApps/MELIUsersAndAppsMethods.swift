//
//  MELIUsersAndAppsMethods.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

class MELIUserAndAppsMethods {
    
    class func getMELISites (completion: (sites:NSArray?, success: Bool) -> ()) {
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest("sites", params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                    print("\(object)")
                    completion(sites: nil, success: true)
                } else {
                    print("\(object)")
                    completion(sites: nil, success: false)
                }
            })
        }
    }
    
}