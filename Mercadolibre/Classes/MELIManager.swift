//
//  MELIManager.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

class MELIManager {
    private static let _sharedInstance = MELIManager()
    
    var localApplicationID: String = MELIErrors.Undefined
    var localApplicationSecretKey: String = MELIErrors.Undefined
    var localApplicationRedirectURI: String = MELIErrors.Undefined
    var localApplicationNotificationsCallbackURL: String = MELIErrors.Undefined
    
    class func sharedInstance() -> MELIManager {
        
        return _sharedInstance
        
    }
    
    class func setApplicationID(applicationID: String) {
        
    }
    
    private init() {} //This prevents others from using the default '()' initializer for this class.
    
}
