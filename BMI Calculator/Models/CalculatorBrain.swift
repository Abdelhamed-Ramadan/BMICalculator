//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abdelhamiid Ramadan on 11/03/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        if bmiValue <= 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Calories", color: .systemBlue)
        }
        else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Keep it Fit", color: .green)
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat more Healthy", color: .systemYellow)
        }
    }
    
    func getBMIValue() -> String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? "0,0")
        
        return bmiValue
    }
    
    func getAdvice () -> String{
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor () -> UIColor{
        return bmi?.color ?? .purple
    }
}
