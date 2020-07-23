//
//  BmiBrain.swift
//  BMI Calculator
//
//  Created by Jeremy Rufo on 7/23/20.
//  Copyright © 2020 Jeremy H Rufo. All rights reserved.
//

import Foundation

struct BmiBrain
{
    var height: Float
    var weight: Float
    
    init(heightInches: Float, weightLbs: Float)
    {
        self.height = 0.0
        self.weight = 0.0
        self.height = getHeightInches(inches: heightInches)
        self.weight = getWeightLbs(lbs: weightLbs)
    }
    
    private func getHeightInches(inches: Float) -> Float
    {
        // The length in meters is equal to the inches multiplied by 0.0254
        return inches * 0.0254
    }
    
    private func getWeightLbs(lbs: Float) -> Float
    {
        // To convert pounds to kilograms, you can use the standard equation
        // by dividing the number of pounds by 2.2046 to calculate the kilograms
        return lbs / 2.2046
    }
    
    func getBMI() -> Float
    {
        /* The formula for BMI is weight in kilograms divided by height in meters squared
               weight (kg) / [height (m)]2
         */
        
        return self.weight / pow(self.height, 2)
    }
}
