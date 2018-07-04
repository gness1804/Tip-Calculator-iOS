//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Graham Nessler on 7/3/18.
//  Copyright © 2018 Graham Nessler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var tipPercentOutput: UILabel!
    
    @IBOutlet weak var billAmtInput: UITextField!
    
    @IBOutlet weak var tipDollarAmtOutput: UILabel!
    
    @IBOutlet weak var totalPaymentAmt: UILabel!
    
    func calculateTip()  {
        if billAmtInput.text != "" {
            let amt = billAmtInput.text!
            let tipAmt: Float = Float(amt)! * slider.value * 0.01
            tipDollarAmtOutput.text = "Tip Amount: $\(tipAmt)"
            let totalBill: Float = Float(amt)! + tipAmt
            totalPaymentAmt.text = "Your total payment is $\(totalBill)."
        } else {
            let alert = UIAlertController(title: "Oops!", message: "Error: you must enter a valid number value for the bill. Please try again.", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
            self.present(alert, animated: true)
        }
    }
    
    @IBAction func onCalcButtonPressed(_ sender: Any) {
       calculateTip()
    }
    
    @IBAction func onSliderChanged(_ sender: Any) {
        let val = slider.value
        tipPercentOutput.text = "Tip Percent: \(val)%"
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

