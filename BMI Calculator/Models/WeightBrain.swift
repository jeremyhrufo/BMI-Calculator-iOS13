//
//  WeightBrain.swift
//  BMI Calculator
//
//  Created by Jeremy Rufo on 7/23/20.
//  Copyright © 2020 Jeremy H Rufo. All rights reserved.
//

import Foundation

class WeightBrain: MeasurementBrainBase
{
    init(minLbs min: Float, maxLbs max: Float)
    {
        super.init(minValue: min, maxValue: max)
    }
    
    override func getValueText() -> String
    {
        // Return weight as whole number (no decimal places)
        // Example: 200 lbs
        return "\(String(format: "%.0f", currentValue)) lbs"
    }
}
