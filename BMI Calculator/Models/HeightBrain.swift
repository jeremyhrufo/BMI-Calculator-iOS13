//
//  HeightBrain.swift
//  BMI Calculator
//
//  Created by Jeremy Rufo on 7/23/20.
//  Copyright © 2020 Jeremy H Rufo. All rights reserved.
//

import Foundation

class HeightBrain: MeasurementBrainBase
{
    init(minInches min: Float, maxInches max: Float)
    {
        super.init(minValue: min, maxValue: max)
    }
    
    override func getValueText() -> String
    {
        // Get the whole number of our full inch value to get feet
        let feet = Int(currentValue) / 12
        
        // Turn decimal into inches (dividing by 12 to get percentage of a foot)
        let inches = currentValue.truncatingRemainder(dividingBy: 12)
        
        // Return height in feet and inches with one decimal place
        // Example: 6' 6.0"
        return "\(feet)' \(String(format: "%.1f", inches))\""
    }
}
