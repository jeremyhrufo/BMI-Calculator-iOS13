//
//  BMIObject.swift
//  BMI Calculator
//
//  Created by Jeremy Rufo on 7/23/20.
//  Copyright © 2020 Jeremy H Rufo. All rights reserved.
//

import UIKit

struct BMIObject
{
    let value: Float
    let advice: String
    let color: UIColor
    
    func getBmiText() -> String
    {
        return String(format: "%.1f", value)
    }
}
