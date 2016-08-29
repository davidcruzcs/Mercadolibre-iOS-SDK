//
//  MELIUser.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

class MELIUser: NSObject {
    
    var id:String?
    var user_id:String?
    var nickname: String?
    var registration_date: String?
    var first_name: String?
    var last_name:String?
    var email:String?
    var user_type:String?
    var identification_type:String?
    var identification_number: String?
    var address: MELIAddress?
    var contact:String?
    var phone:String?
    var phone_area_code:String?
    var phone_number:String?
    var phone_extension:String?
    var phone_verified: Bool?
    var alternative_phone: String?
    var alternative_phone_area_code: String?
    var alternative_phone_number: String?
    var alternative_phone_extension: String?
    var address_line:String?
    var floor: String?
    var apartment: String?
    var street_number: String?
    var street_name:String?
    var zip_code: String?
    var city_id: String?
    var city_name: String?
    var state_id: String?
    var state_name: String?
    var country_id: String?
    var country_name: String?
    var neighborhood_id: String?
    var neighborhood_name: String?
    var municipality_id: String?
    var municipality_name: String?
    var search_location: MELIAddress?
    var types: NSMutableArray?
    var comment: String?
    var geolocation_type: String?
    var latitude: Double?
    var longitude: Double?
    var date_created:String?
    var normalized: Bool?
    var open_hours: NSMutableDictionary?
    var tags: NSMutableDictionary?
    var logo:String?
    var points: Int?
    var site_id: String?
    var permalink: String?
    var shipping_modes: NSMutableDictionary?
    var seller_reputation: MELISellerReputation?
    var buyer_reputation: MELIBuyerReputation?
    var status: MELIUserStatus?
    var credit_consumed:Int?
    var credit_level_id: String?
    var accepted_payment_methods: MELIUserPaymentMethods?
    
    func start() {
        MELIManager.sharedInstance().applicationID = "Hola"
        
    }
    
}