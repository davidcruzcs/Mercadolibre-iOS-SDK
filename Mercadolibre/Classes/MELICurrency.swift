//
//  MELICurrency.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 9/13/16.
//
//

import Foundation
public class MELICurrency: NSObject {
    
    public var id: String?
    public var description_text: String?
    public var symbol:String?
    public var decimal_places: Int?
    
    override init () {
        super.init()
        
        
        
    }
    
    convenience init(_ dictionary: Dictionary<String, AnyObject>) {
        self.init()
        
        id = dictionary["id"] as? String
        description_text = dictionary["description"] as? String
        symbol = dictionary["symbol"] as? String
        decimal_places = dictionary["decimal_places"] as? Int
        
    }
    
    
    
    public func loadCurrencyWithId (currencyId:String, completion: (currency:MELICurrency?,success: Bool) -> ()) {
        
        let fullPath = "currencies/" + currencyId
        
        let request:NSMutableURLRequest = RESTManager.clientURLRequest(fullPath, params: nil, token: nil)
        RESTManager.get(request) { (success, object) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                
                if success {
                   
                    let dictionary = object as! Dictionary<String, AnyObject>
                    let obtainedCurrency: MELICurrency = MELICurrency.init(dictionary)
                    
                    completion(currency:obtainedCurrency, success: true)
                    
                } else {
                    print("\(object)")
                    completion(currency:nil, success: false)
                }
            })
        }
    }
    
    

   
}