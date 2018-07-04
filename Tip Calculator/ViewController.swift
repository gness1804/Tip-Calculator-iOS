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
    
    func calculateTip()  {
        if billAmtInput.text != "" {
            print(billAmtInput.text!)
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
        tipPercentOutput.text = "Tip Amount: \(val)%"
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

