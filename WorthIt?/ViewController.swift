//
//  ViewController.swift
//  WorthIt?
//
//  Created by Khoa Tran on 9/17/18.
//  Copyright © 2018 Khoa Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var OriPrice: UITextField!
    @IBOutlet weak var DisPercent: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var result2: UILabel!
    
    @IBAction func calculate(_ sender: UIButton) {
        
        if let original_price = Double(OriPrice.text!),
            let discount_percent = Double(DisPercent.text!){
            let final_price = Double(round(original_price * (1-(discount_percent/100))))
            
            let after_tax = Double(round(final_price * 1.0925))
            result.text = "Final Price Before Tax: \(final_price)"
            result2.text = "Final Price After Tax: \(after_tax)"
        }
        else{
            result.text = "You forgot to enter some info"

        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

