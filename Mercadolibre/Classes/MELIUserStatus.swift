//
//  MELIUserStatus.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class MELIUserStatus: NSObject {
    
    public var site_status: String?
    public var list_allow: Bool?
    public var list_codes: NSMutableArray?
    public var list_inmediate_payment_required: Bool?
    public var list_inmediate_payment_reasons: NSMutableArray?
    
    public var buy_allow: Bool?
    public var buy_codes: NSMutableArray?
    public var buy_inmediate_payment_required: Bool?
    public var buy_inmediate_payment_reasons: NSMutableArray?
    
    public var sell_allow: Bool?
    public var sell_codes: NSMutableArray?
    public var sell_inmediate_payment_required: Bool?
    public var sell_inmediate_payment_reasons: NSMutableArray?
    
    public var billing_allow: Bool?
    public var billing_codes: NSMutableArray?
    
    public var mercadopago_tc_accepted: Bool?
    public var mercadopago_account_type: String?
    public var mercadoenvios: String?
    public var immediate_payment: Bool?
    public var confirmed_email: Bool?
    public var user_type: String?
    public var required_action: String?
}