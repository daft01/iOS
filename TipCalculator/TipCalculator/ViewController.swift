//
//  ViewController.swift
//  TipCalculator
//
//  Created by Daniel Morales on 8/26/19.
//  Copyright © 2019 Daniel Morales. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var percentControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.05, 0.10, 0.15, 0.20, 0.25]
        let bill = Double(billTextField.text!) ?? 0
        let tip = (bill * tipPercent[percentControl.selectedSegmentIndex])
        let total = tip + bill;
        
        tipLabel.text = String(format: "$%.2f", tip);
        billLabel.text = String(format: "$%.2f", total);
    }
}

