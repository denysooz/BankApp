//
//  Transaction.swift
//  BankApp
//
//  Created by Paul Makey on 25.06.24.
//

import Foundation

struct Transaction: Hashable, Identifiable {
    let id = UUID()
    let company: String
    let number: String
    let date: Date
    let status: TransactionStatus
    let amount: Double
    
    var getFormattedAmount: String {
        let formattedAmount = String(format: "%.2f", amount)
        return "$\(formattedAmount)"
    }
    
    var getFormattedDate: String {
        DateFormatter.displayDate.string(from: date)
    }
}
