//
//  RESTManager.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class RESTManager{
    
    public static let _sharedInstance = RESTManager()
    
    class func sharedInstance() -> RESTManager {
        
        return _sharedInstance
        
    }
    
    private init() {} //This prevents others from using the default '()' initializer for this class.
    
    
    class func post(request: NSMutableURLRequest, completion: (success: Bool, object: AnyObject?) -> ()) {
        dataTask(request, method: "POST", completion: completion)
    }
    
    class func put(request: NSMutableURLRequest, completion: (success: Bool, object: AnyObject?) -> ()) {
        dataTask(request, method: "PUT", completion: completion)
    }
    
    class func get(request: NSMutableURLRequest, completion: (success: Bool, object: AnyObject?) -> ()) {
        dataTask(request, method: "GET", completion: completion)
    }
    
    class func clientURLRequest(path: String, params: Dictionary<String, AnyObject>? = nil, token:String?) -> NSMutableURLRequest {
        let request = NSMutableURLRequest(URL: NSURL(string: "https://api.mercadolibre.com/"+path)!)
        if let params = params {
            var paramString = ""
            for (key, value) in params {
                let escapedKey = key.stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())
                let escapedValue = value.stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())
                paramString += "\(escapedKey)=\(escapedValue)&"
            }
            
            request.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
            request.HTTPBody = paramString.dataUsingEncoding(NSUTF8StringEncoding)
        }
        
        if let token = token {
            request.addValue("Bearer "+token, forHTTPHeaderField: "Authorization")
        }
        
        return request
    }
    
    class func dataTask(request: NSMutableURLRequest, method: String, completion: (success: Bool, object: AnyObject?) -> ()) {
        request.HTTPMethod = method
        
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        
        session.dataTaskWithRequest(request) { (data, response, error) -> Void in
            if let data = data {
                let json = try? NSJSONSerialization.JSONObjectWithData(data, options: [])
                if let response = response as? NSHTTPURLResponse where 200...299 ~= response.statusCode {
                    completion(success: true, object: json)
                } else {
                    completion(success: false, object: json)
                }
            }
            }.resume()
    }
    
}
