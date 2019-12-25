//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    var cb = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderDragged(_ sender: UISlider) {
        let roundedValue = round(100.0 * sender.value) / 100.0
        heightLabel.text = "\(roundedValue)m"
    }
    
    @IBAction func weightSliderDragged(_ sender: UISlider) {
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    

    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = round(100.0 * heightSlider.value) / 100.0
        let weight = weightSlider.value
        
        // Calculate the BMI and store the result in the CalculatorBrain object
        self.cb.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // If the segue is goToResult
        if segue.identifier == "goToResult" {
            
            // Down cast destinationVC as a ResultViewController with as!
            let destinationVC = segue.destination as! ResultViewController
            
            // Retrieve the BMI in the CalculatorBrain object
            destinationVC.bmiVal = self.cb.getBMI()
            destinationVC.color = self.cb.getColor()
            destinationVC.advice = self.cb.getAdvice()
            
        }
    }
    

}

