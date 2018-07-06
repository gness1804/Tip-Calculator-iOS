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
    
    func roundToTwoDecPlaces(num: Float) -> Float {
        return (num * 100).rounded() / 100
    }
    
    func calculateTip()  {
        if billAmtInput.text != "" {
            let amt: String = billAmtInput.text!
            let roundedAmt: Float = roundToTwoDecPlaces(num: Float(amt)!)
            let tipAmt: Float = roundedAmt * slider.value * 0.01
            let roundedTipAmt: Float = roundToTwoDecPlaces(num: tipAmt)
            tipDollarAmtOutput.text = "Tip Amount: $\(roundedTipAmt)"
            let totalBill: Float = Float(amt)! + tipAmt
            totalPaymentAmt.text = "Your total payment is $\(roundToTwoDecPlaces(num: totalBill))."
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
        let roundedVal = roundf(Float(val))
        tipPercentOutput.text = "Tip Percent: \(roundedVal)%"
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

