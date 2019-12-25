//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Anthony Liu on 2019/12/24.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue: Float = weight / (height * height)
        
        if bmiValue < 18.5 {
            // Underweight
            self.bmi = BMI(value: bmiValue, advice: "Underweight", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if bmiValue < 24.9 {
            // Normal
            self.bmi = BMI(value: bmiValue, advice: "Normal", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else {
            // Overweight
            self.bmi = BMI(value: bmiValue, advice: "Overweight", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMI() -> Float {
        // Optional chaining
        return self.bmi?.value ?? 0.0
    }
    
    func getAdvice() -> String {
        return self.bmi?.advice ?? "I sense great disturbance..."
    }
    
    func getColor() -> UIColor {
        return self.bmi?.color ?? UIColor.white
    }
}

