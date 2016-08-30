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
    
}
