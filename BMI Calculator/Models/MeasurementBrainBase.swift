//
//  MyMeasurement.swift
//  BMI Calculator
//
//  Created by Jeremy Rufo on 7/23/20.
//  Copyright © 2020 Jeremy H Rufo. All rights reserved.
//

import Foundation

protocol MeasurementBrainProtocol
{
    var minimum: Float { get }
    var maximum: Float { get }
    var currentValue: Float { get set }
    
    func getValueText() -> String
}

extension MeasurementBrainProtocol
{
    func getMinimum() -> Float { return minimum }
    func getMaximum() -> Float { return maximum }

    mutating func updateValue(value: Float) { self.currentValue = value }
    func getValue() -> Float { return self.currentValue }
}

class MeasurementBrainBase: MeasurementBrainProtocol
{
    let minimum: Float
    let maximum: Float
    var currentValue: Float
    
    init(minValue: Float, maxValue: Float)
    {
        self.minimum = minValue >= 0.0 ? minValue : 0.0
        self.maximum = maxValue >= minValue ? maxValue : minValue
        self.currentValue = minValue
    }
    
    func getValueText() -> String { return "" }
}
