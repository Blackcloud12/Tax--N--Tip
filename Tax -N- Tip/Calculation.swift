//
//  Calculation.swift
//  Tax -N- Tip
//
//  Created by Daren Davis on 7/19/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import Foundation

class Calculation {
    
    static func convertRateForMath(rate: Double) -> Double {
        return rate / 100
    }
    
    static func calculateRateToAddOn(rate: Double, subTotal: Double) -> Double {
        return rate * subTotal
    }
    
    static func calculateTotal(tax: Double, subTotal: Double) -> Double {
        return tax + subTotal
    }
    
    static func isInputValid(input: String) -> Bool {
        var inputString = input
        let index = inputString.firstIndex(of: "$")
        if index != nil {
            inputString.remove(at: index!)
        }
        if let _ = Double(inputString){
            return true
        }
        return false
    }
}
