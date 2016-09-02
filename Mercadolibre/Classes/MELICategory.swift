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
    
    public var adult_content: Bool?
    
    public var buying_allowed: Bool?
    
    public var buying_modes: NSArray?
    
    public var currencies: NSArray?
    
    public var fragile: Bool?
    
    public var immediate_payment: String?
    
    public var item_conditions: NSArray?
    
    public var items_reviews_allowed:Bool?
    
    public var listing_allowed:Bool?
    
    public var max_description_length: Int?
    
    public var max_pictures_per_item: Int?
    
    public var max_pictures_per_item_var: Int?
    
    public var max_sub_title_length: Int?

    public var max_title_length: Int?

    public var maximum_price: String?

    public var minimum_price: String?

    public var mirror_category:String?

    public var mirror_master_category: String?

    public var mirror_slave_categories: NSArray?
    
    public var price: String?

    public var restrictions: NSArray?

    public var rounded_address: Bool?

    public var seller_contact:String?

    public var shipping_modes: NSArray?
    
    public var shipping_options: NSArray?
    
    public var shipping_profile: String?

    public var show_contact_information: Bool?

    public var simple_shipping: String?

    public var stock: String?

    public var sub_vertical: String?

    public var tags:NSArray?
    
    public var vertical: String?
    
    public var vip_subdomain: String?
    
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
                    
                    
                    let settings: NSDictionary = dictionary["settings"] as! NSDictionary
                    
                    self.adult_content = self.getBoolFromInt(settings["adult_content"] as? Int)
                    self.buying_allowed = self.getBoolFromInt(settings["buying_allowed"] as? Int)
                    self.buying_modes = settings["buying_modes"] as? NSArray
                    self.currencies = settings["currencies"] as? NSArray
                    self.fragile = self.getBoolFromInt(settings["fragile"] as? Int)
                    self.immediate_payment = settings["immediate_payment"] as? String
                    self.item_conditions = settings["item_conditions"] as? NSArray
                    self.items_reviews_allowed = self.getBoolFromInt(settings["items_reviews_allowed"] as? Int)
                    self.listing_allowed = self.getBoolFromInt(settings["listing_allowed"] as? Int)
                    self.max_description_length = settings["max_description_length"] as? Int
                    self.max_pictures_per_item = settings["max_pictures_per_item"] as? Int
                    self.max_pictures_per_item_var = settings["max_pictures_per_item_var"] as? Int
                    self.max_sub_title_length = settings["max_sub_title_length"] as? Int
                    self.max_title_length = settings["max_title_length"] as? Int
                    self.maximum_price = settings["maximum_price"] as? String
                    self.minimum_price = settings["minimum_price"] as? String
                    self.mirror_category = settings["mirror_category"] as? String
                    self.mirror_master_category = settings["mirror_master_category"] as? String
                    self.mirror_slave_categories = settings["mirror_slave_categories"] as? NSArray
                    self.price = settings["price"] as? String
                    self.restrictions = settings["restrictions"] as? NSArray
                    self.rounded_address = self.getBoolFromInt(settings["rounded_address"] as? Int)
                    self.seller_contact = settings["seller_contact"] as? String
                    self.shipping_modes = settings["shipping_modes"] as? NSArray
                    self.shipping_options = settings["shipping_options"] as? NSArray
                    self.shipping_profile = settings["shipping_profile"] as? String
                    self.show_contact_information = self.getBoolFromInt(settings["show_contact_information"] as? Int)
                    self.simple_shipping = settings["simple_shipping"] as? String
                    self.stock = settings["stock"] as? String
                    self.sub_vertical = settings["sub_vertical"] as? String
                    self.tags = settings["tags"] as? NSArray
                    self.vertical = settings["vertical"] as? String
                    self.vip_subdomain = settings["vip_subdomain"] as? String
                    
                    
                    completion(success: true)
                    
                } else {
                    print("\(object)")
                    completion(success: false)
                }
            })
        }
    }
    
    func getBoolFromInt(int:Int?) -> Bool {
        if int == 0 {
            return false
        } else {
            return true
        }
    }
}

