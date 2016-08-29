//
//  MELIBuyerReputation.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

class MELIBuyerReputation: NSObject {
    
    var canceled_transactions: Int?
    var transactions_total: Int?
    var transactions_completed: Int?
    var transactions_canceled: Int?
    var transactions_canceled_paid: Int?
    var transactions_unrated: Int?
    var transactions_unrated_paid: Int?
    var transactions_notyetrated: Int?
    var transactions_notyetrated_paid: Int?
    var tags: NSMutableDictionary?
    
    
}