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
    @IBOutlet weak var percentSlider: UISlider!
    
    @IBOutlet weak var userTempTotal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        userInput.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //UITextField Delegate
    @IBAction func onEditingUserInput(sender: AnyObject) {
        var people = [1,2,3]
        var percents = percentSlider.value * 0.22
        let selectedPercent = percents
        let billAmount = NSString(string: userInput.text!).doubleValue
        self.userTempTotal.text = String(percents*100) + "%"
        
        print(billAmount)
        print(userInput.text)
        let tip = billAmount * Double(percents)
        let total = (billAmount + tip) / Double(people[tipPercent.selectedSegmentIndex])
        
//        calcTip.text = String(format: "$%.2f", tip.asLocaleCurrency())
//        userTotal.text = String(format: "$%.2f", total.asLocaleCurrency())
    
        calcTip.text = tip.asLocaleCurrency()
        userTotal.text = total.asLocaleCurrency()
    }
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true);
    }
 
}

extension Double {
    func asLocaleCurrency() -> String {
        var formatter = NSNumberFormatter()
        formatter.numberStyle = .CurrencyStyle
        formatter.locale = NSLocale.currentLocale()
        return formatter.stringFromNumber(self)!
    }
}

