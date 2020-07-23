//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Jeremy Rufo
//  Copyright © 2020 Jeremy H Rufo. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController
{
    var heightBrain = HeightBrain(minInches: 36.0, maxInches: 120.0)
    var weightBrain = WeightBrain(minLbs: 0.0, maxLbs: 450.0)
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        heightSlider.minimumValue = heightBrain.getMinimum()
        heightSlider.maximumValue = heightBrain.getMaximum()
        weightSlider.minimumValue = weightBrain.getMinimum()
        weightSlider.maximumValue = weightBrain.getMaximum()
        
        heightBrain.updateValue(value: 77.5)
        heightSlider.value = heightBrain.getValue()
        weightBrain.updateValue(value: 220.0)
        weightSlider.value = weightBrain.getValue()
        
        updateUI()
    }

    @IBAction func heightChanged(_ sender: UISlider)
    {
        heightBrain.updateValue(value: sender.value)
        updateUI()
    }
    
    @IBAction func weightChanged(_ sender: UISlider)
    {
        weightBrain.updateValue(value: sender.value)
        updateUI()
    }
    
    func updateUI()
    {
        heightLabel.text = heightBrain.getValueText()
        weightLabel.text = weightBrain.getValueText()
    }
    
    func getBmiText() -> String
    {
        let bmiBrain =
            BmiBrain(heightInches: heightBrain.getValue(), weightLbs: weightBrain.getValue())
        return bmiBrain.getBmiText()
    }
    
    @IBAction func calculateBMI(_ sender: UIButton)
    {
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "goToResult"
        {
            let destinationVC = segue.destination as? ResultViewController
            destinationVC?.bmiValue = getBmiText()
        }
    }
}
