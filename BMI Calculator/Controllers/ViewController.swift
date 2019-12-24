//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
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
        
        let bmi = weight / (height * height)
        
        print(bmi)
    }
    

}

