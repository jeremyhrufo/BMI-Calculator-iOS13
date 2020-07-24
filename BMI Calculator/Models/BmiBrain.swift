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
    var height: Float?
    var weight: Float?
    
    init(heightInches: Float, weightLbs: Float)
    {
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
    
    private func getBmiValue() -> Float
    {
        /* The formula for BMI is weight in kilograms
           divided by height in meters squared
               BMI = weight (kg) / [height (m)]2
         */
        return (self.weight ?? 0) / (pow(self.height ?? 1, 2))
    }
    
    func getBmiText() -> String
    {
        return getBmi().getBmiText()
    }
    
    func getBmi() -> BMIObject
    {
        let bmi = getBmiValue()
        if bmi < 18.5
        {
            return BMIObject(value: bmi, advice: "Eat more pies.", color: .blue)
        }
        else if bmi < 24.9
        {
            return BMIObject(value: bmi, advice: "Keep doing what you're doing.", color: .green)
        }
        return BMIObject(value: bmi, advice: "Go running and lift weights.", color: .red)
    }
}
