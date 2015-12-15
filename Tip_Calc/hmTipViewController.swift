//
//  ViewController.swift
//  Tip_Calc
//
//  Created by Hugh A. Miles on 12/7/15.
//  Copyright © 2015 HAM. All rights reserved.
//

import UIKit

class hmTipViewController: UIViewController {
    
    @IBOutlet var userInput: UITextField!
    @IBOutlet var tipPercent: UISegmentedControl!
    @IBOutlet var userTotal: UILabel!
    @IBOutlet var calcTip: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITextField Delegate
    @IBAction func onEditingUserInput(sender: AnyObject) {
        var percents = [0.15,0.18,0.22]
        let selectedPercent = percents[tipPercent.selectedSegmentIndex]
        let billAmount = NSString(string: userInput.text!).doubleValue
        
        let tip = billAmount * selectedPercent
        let total = billAmount + tip
        
        calcTip.text = String(format: "$%.2f", tip)
        userTotal.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
 
}

