//
//  MELIBuyerReputation.swift
//  Pods
//
//  Created by Juan David Cruz Serrano on 8/28/16.
//
//

import Foundation

public class MELIBuyerReputation: NSObject {
    
    public var canceled_transactions: Int?
    public var transactions_total: Int?
    public var transactions_completed: Int?
    public var transactions_canceled: Int?
    public var transactions_canceled_paid: Int?
    public var transactions_unrated: Int?
    public var transactions_unrated_paid: Int?
    public var transactions_notyetrated: Int?
    public var transactions_notyetrated_paid: Int?
    public var tags: NSMutableDictionary?
    
    
}