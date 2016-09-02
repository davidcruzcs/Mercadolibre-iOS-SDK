//
//  MELIUser.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class MELIUser: NSObject {
    
    public var id:String?
    public var user_id:String?
    public var nickname: String?
    public var registration_date: String?
    public var first_name: String?
    public var last_name:String?
    public var email:String?
    public var user_type:String?
    public var identification_type:String?
    public var identification_number: String?
    public var address: MELIAddress?
    public var contact:String?
    public var phone:String?
    public var phone_area_code:String?
    public var phone_number:String?
    public var phone_extension:String?
    public var phone_verified: Bool?
    public var alternative_phone: String?
    public var alternative_phone_area_code: String?
    public var alternative_phone_number: String?
    public var alternative_phone_extension: String?
    public var address_line:String?
    public var floor: String?
    public var apartment: String?
    public var street_number: String?
    public var street_name:String?
    public var zip_code: String?
    public var city_id: String?
    public var city_name: String?
    public var state_id: String?
    public var state_name: String?
    public var country_id: String?
    public var country_name: String?
    public var neighborhood_id: String?
    public var neighborhood_name: String?
    public var municipality_id: String?
    public var municipality_name: String?
    public var search_location: MELIAddress?
    public var types: NSMutableArray?
    public var comment: String?
    public var geolocation_type: String?
    public var latitude: Double?
    public var longitude: Double?
    public var date_created:String?
    public var normalized: Bool?
    public var open_hours: NSMutableDictionary?
    public var tags: NSMutableDictionary?
    public var logo:String?
    public var points: Int?
    public var site_id: String?
    public var permalink: String?
    public var shipping_modes: NSMutableDictionary?
    public var seller_reputation: MELISellerReputation?
    public var buyer_reputation: MELIBuyerReputation?
    public var status: MELIUserStatus?
    public var credit_consumed:Int?
    public var credit_level_id: String?
    public var accepted_payment_methods: MELIUserPaymentMethods?
    
    
    
}