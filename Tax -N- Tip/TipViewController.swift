//
//  TipViewController.swift
//  Tax -N- Tip
//
//  Created by Daren Davis on 7/6/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var tipRateSliderValueLabel: UILabel!
    @IBOutlet weak var tipRateSlider: UISlider!
    @IBOutlet weak var tipRateLabel: UILabel!
    @IBOutlet weak var tipPriceTotalLabel: UILabel!
    @IBOutlet weak var tipButton: UIButton!
    @IBOutlet weak var tipPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    @IBAction func tipCalculateClicked() {
        print("Tip button clicked")
        let input = tipTextField.text!
        // Strip dollar sign and convert to double -> all else throw error
    
        if Calculation.isInputValid(input: input){
            errorLabel.isHidden = true
            let subTotal = convertInputToDouble(input: input) // change to another datatype
            let rate = Calculation.convertRateForMath(rate: Double(tipRateSlider.value)) // change type
            if let subTotal = subTotal {
                let tip = Calculation.calculateRateToAddOn(rate: rate, subTotal: subTotal)
                let total = Calculation.calculateTotal(tax: tip, subTotal: subTotal)
                //TODO: Set precision on Doubles
                tipRateLabel.text = "$ " + String(format: "%.2f", tip)
                tipPriceTotalLabel.text = "$ " + String(format: "%.2f", total)
            }
        } else {
            displayError()
        }
        resetViewState()
    }
    
    @IBAction func displaySliderValue() {
        tipRateSliderValueLabel.text! = "\(Int(tipRateSlider.value))%"
    }
    
    func resetViewState() {
        tipRateSlider.value = 15
        tipTextField.text = ""
        tipRateSliderValueLabel.text = "\(Int(tipRateSlider.value))%"
    }
    
    func displayError() {
        // display error message for 3 seconds
        errorLabel.isHidden = false
    }
    
    func convertInputToDouble(input: String) -> Double? {
        var inputString = input
        if inputString.contains("$"){
            let index = inputString.firstIndex(of: "$")
            inputString.remove(at: index!)
            print(inputString)
        }
        return Double(inputString)
    }
    
    
}
