//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Jeremy Rufo on 7/23/20.
//  Copyright © 2020 Jeremy H Rufo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController
{
    var bmiValue: BMIObject?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        bmiLabel.text = self.bmiValue?.getBmiText() ?? "Error getting BMI."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
}
