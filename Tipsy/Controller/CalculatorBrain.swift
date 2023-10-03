//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Masoud Farmani on 11.07.1402 AP.
//  Copyright © 1402 AP The App Brewery. All rights reserved.
//

struct CalculatorBrain {
    var billTotal: Double
    var tipPercentage: Double
    var splitCount: Int
    
    func getTipValue(_ tipButtonTitle: String?) -> Double {
        let tipValues = ["20%":0.2, "10%":0.1, "0%":0.0]
        return tipValues[tipButtonTitle ?? "20%"]!
    }
}
