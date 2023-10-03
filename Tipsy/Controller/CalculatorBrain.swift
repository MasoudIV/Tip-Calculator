//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Masoud Farmani on 11.07.1402 AP.
//  Copyright © 1402 AP The App Brewery. All rights reserved.
//

struct CalculatorBrain {
    var billTotal: Double = 0
    var tipPercentage: Double = 0.2
    var splitCount: Int = 2
    
    mutating func setTipPercentage(_ tipButtonTitle: String?) {
        let tipValues = ["20%":0.2, "10%":0.1, "0%":0.0]
        tipPercentage = tipValues[tipButtonTitle ?? "20%"]!
    }
}
