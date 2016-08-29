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
    
    public var applicationID: String = MELIErrors.Undefined
    public var applicationSecretKey: String = MELIErrors.Undefined
    public var applicationRedirectURI: String = MELIErrors.Undefined
    public var applicationNotificationsCallbackURL: String = MELIErrors.Undefined
    
    class func sharedInstance() -> MELIManager {
        
        return _sharedInstance
        
    }
    
    private init() {} //This prevents others from using the default '()' initializer for this class.
    
}
