//
//  TaxViewController.swift
//  Tax -N- Tip
//
//  Created by Daren Davis on 7/6/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class TaxViewController: UIViewController, UIPickerViewDelegate/*, UIPickerViewDataSource*/ {
    
//    let taxRange = 0.001...10.00
//
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return taxRange
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        <#code#>
//    }
    
    
    @IBOutlet weak var subtotalTextField: UITextField!
    @IBOutlet weak var taxRatePickerView: UIPickerView!
    @IBOutlet weak var salesTaxLabel: UILabel!
    @IBOutlet weak var priceTotalLabel: UILabel!
    @IBOutlet weak var salesTaxButton: UIButton!
    @IBOutlet weak var taxPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func taxCalculateClicked() {
        print("Tax Button clicked")
    }
    
    
    
    
}
