//
//  ViewController.swift
//  BMI
//
//  Created by Shoot Patiphan on 14/2/2562 BE.
//  Copyright © 2562 Patiphan Srisook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var bmiResult: UILabel!
    @IBOutlet weak var categoryResult: UILabel!
    
    @IBOutlet weak var inputHeight: UITextField!
    @IBOutlet weak var inputWeight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiResult.textColor = .blue
        categoryResult.textColor = .orange
    }

    @IBAction func calculateBtn(_ sender: UIButton) {
        let weight = Double(inputWeight.text!)
        let height = Double(inputHeight.text!)
        
        var result = 0.0
        
        if(weight != nil && height != nil){
            result = weight!/(height!*height!)*10000
        }
        
        bmiResult.text = "Your BMI is " + String(format: "%.2f",result)
        
        if(result < 18.5){
            categoryResult.text = "Underweight"
            imgLogo.image = UIImage(named: "underweight.png")
        }
        else if (result >= 18.5 && result < 23){
            categoryResult.text = "Healthy Range"
            imgLogo.image = UIImage(named: "healthy.png")
        }
        else if (result >= 23 && result < 27.5){
            categoryResult.text = "Over Weight"
            imgLogo.image = UIImage(named: "overweight.png")
        }
        else if (result >= 27.5){
            categoryResult.text = "Obese!!"
            imgLogo.image = UIImage(named: "obese.png")
        }
        else{
        }
    }
    
}

