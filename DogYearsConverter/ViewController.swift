//
//  ViewController.swift
//  DogYearsConverter
//
//  Created by Rosemarie Day on 5/29/15.
//  Copyright (c) 2015 rjd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var humanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    * Challenge One:
    * 1. enter human years in integer value
    * 2. take integer value and unwrap from string
    * 3. add seven years constant
    * 4. unhide dog years label
    * 5. display on dog years label
    * 6. set text field back to placeholder text
    * 7. close keyboard if remains open
    */
    
    // Challenge Two: The real conversion for dog years is as follows; Each human year equals 10.5 dog years for 
    // the first two years, and then 4 dog years for each human year after.
    @IBAction func convertButton(sender: UIButton) {
    
        let conversionConstant = 7
        let dogYears = humanYearsTextField.text.toInt()!
        dogYearsLabel.text = "\(dogYears * conversionConstant)" + " years old in dog years"
        dogYearsLabel.hidden = false
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder() // closes the keyboard
        
    }
    
    @IBAction func convertButtonActual(sender: UIButton) {

        let conversionOne = 10.5
        let conversionTwo = 4
        var dogYears = Double((humanYearsTextField.text as NSString).doubleValue)

        
        if (dogYears <= 2)
        {
            dogYears *= 10.5
        } else {
            let convertFirstTwo = 10.5 * 2
            dogYears -= 2
            dogYears = (dogYears * 4) + convertFirstTwo
        }
        
        dogYearsLabel.text = "\(dogYears)" + " years old in dog years"
        dogYearsLabel.hidden = false
        humanYearsTextField.text = ""
        humanYearsTextField.resignFirstResponder() // closes the keyboard
    }
}

