//
//  InterfaceController.swift
//  qTip Extension
//
//  Created by Hugh A. Miles on 12/14/15.
//  Copyright © 2015 HAM. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet var userBillAmount: WKInterfaceLabel!
    @IBOutlet var Total: WKInterfaceLabel!
    
    
    @IBOutlet var tableView: WKInterfaceGroup!
    
    var percents = ["18%", "22%", "33%"]
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        // Configure interface objects here.
    }
    
    override func willActivate() {
        super.willActivate()
    }
    
}
