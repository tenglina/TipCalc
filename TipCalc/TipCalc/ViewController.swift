//
//  ViewController.swift
//  TipCalc
//
//  Created by Nandini Tengli on 9/6/20.
//  Copyright © 2020 Nandini Tengli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TotalAmountLabel: UILabel!
    @IBOutlet weak var BillAmountTextField: UITextField!
    @IBOutlet weak var TipPercentageControl: UISegmentedControl!
    @IBOutlet weak var TipPercentageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func OnTap(_ sender: Any){
    }
    
    @IBAction func ClculateTip(_ sender: Any) {
        //Get the initial Bill amount and calculate tip
        let bill = Double(BillAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        //Calculate Tip and Total
        let tip = bill * tipPercentages [TipPercentageControl.selectedSegmentIndex]
        let total = bill + tip
        
        //updating tip and total labels
        TipPercentageLabel.text = String(format: "$%.2f", tip)
        TotalAmountLabel.text = String(format: "$%.2f", total)
    }
    
}


