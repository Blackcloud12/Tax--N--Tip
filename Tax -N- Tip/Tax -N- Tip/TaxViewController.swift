//
//  TaxViewController.swift
//  Tax -N- Tip
//
//  Created by Daren Davis on 7/6/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class TaxViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet weak var subtotalTextField: UITextField!
    @IBOutlet weak var taxRatePickerView: UIPickerView!
    @IBOutlet weak var salesTaxLabel: UILabel!
    @IBOutlet weak var priceTotalLabel: UILabel!
    @IBOutlet weak var salesTaxButton: UIButton!
    @IBOutlet weak var taxPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
