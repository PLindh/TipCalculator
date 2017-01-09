//
//  ViewController.swift
//  TipCalculator
//
//  Created by Plindh on 9/7/16.
//  Copyright © 2016 Plindh. All rights reserved.
//
//                        A - - - E - - - S - - - T - - - H - - - E - - - T - - - I - - - C

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var fifteenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var twentyFiveButton: UIButton!
    @IBOutlet weak var theBill: UITextField!
    @IBOutlet weak var theResult: UILabel!
    @IBOutlet weak var blueBack: UIImageView!
    @IBOutlet weak var grandTotal: UILabel!
    @IBOutlet weak var numberOfPeopleField: UITextField!
    @IBOutlet weak var tipSplitLabel: UILabel!
    @IBOutlet weak var grandTotalSplitLabel: UILabel!
    @IBOutlet weak var moneyOne: UILabel!
    @IBOutlet weak var moneyTwo: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        blueBack.image = UIImage(named: "blueBack")
        blueBack.alpha = 0.1
        numberOfPeopleField.text = "\(1)"
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        theBill.keyboardType = UIKeyboardType.decimalPad
    }
    
    //for 10% button pressed
    @IBAction func button10(_ sender: UIButton) {
        self.tenButton.backgroundColor = UIColor.green
        if (fifteenButton.backgroundColor == UIColor.green || twentyButton.backgroundColor == UIColor.green || twentyFiveButton.backgroundColor == UIColor.green) {
            fifteenButton.backgroundColor = UIColor.clear
            twentyButton.backgroundColor = UIColor.clear
            twentyFiveButton.backgroundColor = UIColor.clear
        }
        self.theBill.resignFirstResponder()
        if (tenButton.backgroundColor == UIColor.green) {
            let billNumber = Float(theBill.text!)
            let tenPercent: Float = 0.10
            let result10 = billNumber! * tenPercent
            let roundedResult10 = round(100.0 * result10) / 100.0
            moneyOne.text = "$"
            moneyTwo.text = "$"
            theResult.text = "\(roundedResult10)"
            grandTotal.text = "\(roundedResult10 + Float(theBill.text!)!)"
        }
    }
    
    @IBAction func button15(_ sender: UIButton) {
        self.fifteenButton.backgroundColor = UIColor.green
        if (tenButton.backgroundColor == UIColor.green || twentyButton.backgroundColor == UIColor.green || twentyFiveButton.backgroundColor == UIColor.green) {
            tenButton.backgroundColor = UIColor.clear
            twentyButton.backgroundColor = UIColor.clear
            twentyFiveButton.backgroundColor = UIColor.clear
        }
        self.theBill.resignFirstResponder()
        if (fifteenButton.backgroundColor == UIColor.green) {
            let billNumber = Float(theBill.text!)
            let fifteenPercent: Float = 0.15
            let result15 = billNumber! * fifteenPercent
            let roundedResult15 = round(100.0 * result15) / 100.0
            moneyOne.text = "$"
            moneyTwo.text = "$"
            theResult.text = "\(roundedResult15)"
            grandTotal.text = "\(roundedResult15 + Float(theBill.text!)!)"
        }
    }
    // fin
    @IBAction func button20(_ sender: UIButton) {
        self.twentyButton.backgroundColor = UIColor.green
        if (tenButton.backgroundColor == UIColor.green || fifteenButton.backgroundColor == UIColor.green || twentyFiveButton.backgroundColor == UIColor.green) {
            tenButton.backgroundColor = UIColor.clear
            fifteenButton.backgroundColor = UIColor.clear
            twentyFiveButton.backgroundColor = UIColor.clear
        }
        self.theBill.resignFirstResponder()
        if (twentyButton.backgroundColor == UIColor.green) {
            let billNumber = Float(theBill.text!)
            let twentyPercent: Float = 0.20
            let result20 = billNumber! * twentyPercent
            let roundedResult20 = round(100.0 * result20) / 100.0
            moneyOne.text = "$"
            moneyTwo.text = "$"
            theResult.text = "\(roundedResult20)"
            grandTotal.text = "\(roundedResult20 + Float(theBill.text!)!)"
        }
        
    }
    // fin
    @IBAction func button25(_ sender: UIButton) {
        self.twentyFiveButton.backgroundColor = UIColor.green
        if (tenButton.backgroundColor == UIColor.green || twentyButton.backgroundColor == UIColor.green || fifteenButton.backgroundColor == UIColor.green) {
            tenButton.backgroundColor = UIColor.clear
            twentyButton.backgroundColor = UIColor.clear
            fifteenButton.backgroundColor = UIColor.clear
        }
        self.theBill.resignFirstResponder()
        if (twentyFiveButton.backgroundColor == UIColor.green) {
            let billNumber = Float(theBill.text!)
            let twentyFivePercent: Float = 0.25
            let result25 = billNumber! * twentyFivePercent
            let roundedResult25 = round(100.0 * result25) / 100.0
            moneyOne.text = "$"
            moneyTwo.text = "$"
            theResult.text = "\(roundedResult25)"
            grandTotal.text = "\(roundedResult25 + Float(theBill.text!)!)"
        }
        
    }
    
    func leftDecrease(_ sender: UIButton) {
        numberOfPeopleField.text = "\(Int(numberOfPeopleField.text!)! - 1)"
    }
    func rightIncrease(_ sender: UIButton) {
        numberOfPeopleField.text = "\(Int(numberOfPeopleField.text!)! + 1)"
    }
    
    func splitCheck(_ sender: UIButton) {
        let numPeople = Float(numberOfPeopleField.text!)
        let x = Float(theResult.text!)! / numPeople!
        let xx = Float(grandTotal.text!)! / numPeople!
        if numberOfPeopleField.text == "\(1)" {
            tipSplitLabel.text = "$\(Float(theResult.text!)!)"
            grandTotalSplitLabel.text = "$\(Float(grandTotal.text!)!)"
        }
        else {
            tipSplitLabel.text = "$\(round(100.0 * x) / 100.0)"
            grandTotalSplitLabel.text = "$\(round(100.0 * xx) / 100.0)"
            //format: "%.2f",     00.00
        }
    }
    
}








