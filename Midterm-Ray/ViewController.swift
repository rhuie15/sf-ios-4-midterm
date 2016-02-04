//
//  ViewController.swift
//  Midterm-Ray
//
//  Created by Raymond Huie on 2/1/16.
//  Copyright © 2016 Ray Huie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var inputA:Double?
    
    var inputB:Double?
    
    var inputOperation:String?
    
    var numberString:String = ""
    
    
    @IBOutlet weak var numberLabel: UILabel!
    
    
    @IBAction func decimalButton(sender: AnyObject) {
        
        numberString = numberString + "."
        
        numberLabel.text = "\(numberString)"
        
    }
    
    
    
    @IBAction func zeroButton(sender: AnyObject) {
        
         numberString = numberString + "0"
        
         numberLabel.text = "\(numberString)"
        
    }
    
    
    @IBAction func oneButton(sender: AnyObject) {
        
         numberString = numberString + "1"
        
         numberLabel.text = "\(numberString)"
        
    }

    
    @IBAction func twoButton(sender: AnyObject) {
        
        numberString = numberString + "2"
        
        numberLabel.text = "\(numberString)"
        
    }
    

    @IBAction func threeButton(sender: AnyObject) {
        
        numberString = numberString + "3"
        
        numberLabel.text = "\(numberString)"
        
    }
    
    
 
    @IBAction func fourButton(sender: AnyObject) {
        
        numberString = numberString + "4"
        
        numberLabel.text = "\(numberString)"
        
    }
    
    
    
    @IBAction func fiveButton(sender: AnyObject) {
        
        numberString = numberString + "5"
        
        numberLabel.text = "\(numberString)"
        
    }
    
    
    @IBAction func sixButton(sender: AnyObject) {
        
        numberString = numberString + "6"
        
        numberLabel.text = "\(numberString)"
        
    }
    
    
 
    @IBAction func sevenButton(sender: AnyObject) {
        
        numberString = numberString + "7"
        
        numberLabel.text = "\(numberString)"
        
    }
    
    
    
    @IBAction func eightButton(sender: AnyObject) {
        
        numberString = numberString + "8"
        
        numberLabel.text = "\(numberString)"
        
        
    }
    
    
    @IBAction func nineButton(sender: AnyObject) {
        
        numberString = numberString + "9"
        
        numberLabel.text = "\(numberString)"
        
    }
    
    
    
    @IBAction func clearButton(sender: AnyObject) {
        
        inputA = nil
        
        inputB = nil
        
        inputOperation = nil
        
        numberString = ""
        
        numberLabel.text = "0"
        
    }
 
    
    @IBAction func negativeOrPositiveButton(sender: AnyObject) {
        
        // may finish over the weekend
        
    }
    
    
    @IBAction func divideby100Button(sender: AnyObject) {
        
        // may finish over weekend
        
    }
    
    
    @IBAction func divideButton(sender: AnyObject) {
        
        // this section of code is when user has not previously tapped calculate or an arithmetic operation yet
        
        if inputOperation == nil {
            
            inputA = Double(numberString)
            
            inputOperation = "divide"
            
            numberString = ""
            
       
        // this section of code is when user taps calculate then taps an arithmetic operation immediately after that
            
        } else if inputOperation == "calculate" {
            
            inputOperation = "divide"
            
        }
            
        // this section of code is when user is applying arithmetic operations on more than two numbers
        
          else {
            
            applyNumberFunctionOnTwoInputs()
            
            inputOperation = "divide"
            
        }
        
    }

    
    
    @IBAction func multiplyButton(sender: AnyObject) {
        
        if inputOperation == nil {
            
            inputA = Double(numberString)
            
            inputOperation = "multiply"
            
            numberString = ""
            
        } else if inputOperation == "calculate" {
            
            inputOperation = "multiply"
        }
        
          else {
            
            applyNumberFunctionOnTwoInputs()
            
            inputOperation = "multiply"
            
        }
        
    }
    
    

    @IBAction func subtractButton(sender: AnyObject) {
        
        if inputOperation == nil {
            
            inputA = Double(numberString)
            
            inputOperation = "subtract"
            
            numberString = ""
            
            
        }  else if inputOperation == "calculate" {
            
            inputOperation = "subtract"
            
            
        }
            else {
            
            applyNumberFunctionOnTwoInputs()
            
            inputOperation = "subtract"
            
        }
        
    }
    
    
    @IBAction func addButton(sender: AnyObject) {
        
        if inputOperation == nil {
            
            inputA = Double(numberString)
            
            inputOperation = "add"
            
            numberString = ""
            
        } else if inputOperation == "calculate" {
            
            inputOperation = "add"
            
        } else {
        
            applyNumberFunctionOnTwoInputs()
            
            inputOperation = "add"
            
        }
    
    }
    
    
    
    
    @IBAction func calculateButton(sender: AnyObject) {
        
        applyNumberFunctionOnTwoInputs()
        
        inputOperation = "calculate"
        
    }
    
    
    
    func applyNumberFunctionOnTwoInputs() {
        
        // if let is used to address when user taps different operations without tapping numbers so we can safely unwrap inputB
        
        if let input = Double(numberString) {
    
            inputB = input
            
            var numberDisplay:Double = 0

        
            if inputOperation == "add" {
    
                numberDisplay = inputA! + inputB!
    
    
            } else if inputOperation == "subtract" {
    
                numberDisplay = inputA! - inputB!

    
            }  else if inputOperation == "divide" {
    
                numberDisplay = inputA! / inputB!
    
            
            }  else if inputOperation == "multiply" {
    
                numberDisplay = inputA! * inputB!
    
        }
        
        
        numberLabel.text = "\(numberDisplay)"
        
        inputA = numberDisplay
        
        numberString = ""
        
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

