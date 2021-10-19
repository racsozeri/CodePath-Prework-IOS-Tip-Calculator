//
//  ViewController.swift
//  Prework
//
//  Created by Oscar Ramirez on 10/18/21.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var colorChanger: UISegmentedControl!
    @IBOutlet weak var billAmount: UILabel!
    @IBOutlet weak var tip: UILabel!
    @IBOutlet weak var total: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    @IBAction func chooseColor(_ sender: Any) {
        //Define color options
        let colorOptions = ["white","black","red"]
        //Get the color chosen by user
        let colorChoice = colorOptions[colorChanger.selectedSegmentIndex]
        
        //Depending on color chosen, background color and text color will change
        if (colorChoice == "white"){
            self.view.backgroundColor = UIColor.white
            tipAmountLabel.textColor = UIColor.black
            billAmountTextField.textColor = UIColor.black
            totalLabel.textColor = UIColor.black
            tip.textColor = UIColor.black
            billAmount.textColor = UIColor.black
            total.textColor = UIColor.black
            colorChanger.selectedSegmentTintColor = UIColor.white
            colorChanger.backgroundColor = UIColor.white
            tipControl.selectedSegmentTintColor = UIColor.white
            tipControl.backgroundColor = UIColor.white
        }
        
        else if (colorChoice == "black"){
            self.view.backgroundColor = UIColor.black
            tipAmountLabel.textColor = UIColor.green
            billAmountTextField.textColor = UIColor.green
            totalLabel.textColor = UIColor.green
            tip.textColor = UIColor.green
            billAmount.textColor = UIColor.green
            total.textColor = UIColor.green
            colorChanger.selectedSegmentTintColor = UIColor.white
            colorChanger.backgroundColor = UIColor.green
            tipControl.selectedSegmentTintColor = UIColor.white
            tipControl.backgroundColor = UIColor.green
        }
        
        else if (colorChoice == "red"){
            self.view.backgroundColor = UIColor.red
            tipAmountLabel.textColor = UIColor.black
            billAmountTextField.textColor = UIColor.black
            totalLabel.textColor = UIColor.black
            tip.textColor = UIColor.black
            billAmount.textColor = UIColor.black
            total.textColor = UIColor.black
            colorChanger.selectedSegmentTintColor = UIColor.white
            colorChanger.backgroundColor = UIColor.white
            tipControl.selectedSegmentTintColor = UIColor.white
            tipControl.backgroundColor = UIColor.white
        }
    }
    
}

