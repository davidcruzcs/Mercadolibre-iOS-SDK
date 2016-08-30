//
//  MELIUserStatus.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class MELIUserStatus: NSObject {
    
    var site_status: String?
    var list_allow: Bool?
    var list_codes: NSMutableArray?
    var list_inmediate_payment_required: Bool?
    var list_inmediate_payment_reasons: NSMutableArray?
    
    var buy_allow: Bool?
    var buy_codes: NSMutableArray?
    var buy_inmediate_payment_required: Bool?
    var buy_inmediate_payment_reasons: NSMutableArray?
    
    var sell_allow: Bool?
    var sell_codes: NSMutableArray?
    var sell_inmediate_payment_required: Bool?
    var sell_inmediate_payment_reasons: NSMutableArray?
    
    var billing_allow: Bool?
    var billing_codes: NSMutableArray?
    
    var mercadopago_tc_accepted: Bool?
    var mercadopago_account_type: String?
    var mercadoenvios: String?
    var immediate_payment: Bool?
    var confirmed_email: Bool?
    var user_type: String?
    var required_action: String?
}