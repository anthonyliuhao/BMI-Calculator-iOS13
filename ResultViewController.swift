//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Anthony Liu on 2019/12/24.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiVal: Float?
    var color: UIColor?
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = String(format: "%.1f", self.bmiVal!)
        adviceLabel.text = self.advice
        resultBackground.backgroundColor = self.color
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
