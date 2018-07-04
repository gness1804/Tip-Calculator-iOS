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

