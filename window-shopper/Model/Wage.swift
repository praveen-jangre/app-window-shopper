//
//  Wage.swift
//  window-shopper
//
//  Created by Praveen Jangre on 21/06/2023.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        
        return Int(ceil(price / wage)) 
        
    }
}
