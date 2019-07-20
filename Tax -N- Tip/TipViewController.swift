//
//  TipViewController.swift
//  Tax -N- Tip
//
//  Created by Daren Davis on 7/6/19.
//  Copyright © 2019 DarenDavis.com. All rights reserved.
//

import UIKit

class TipViewController: UIViewController {

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
    }
}
