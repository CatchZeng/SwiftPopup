//
//  AlertDemoViewController.swift
//  SwiftPopup_Example
//
//  Created by CatchZeng on 2018/1/10.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import UIKit
import SwiftPopup

class AlertDemoViewController: SwiftPopup {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closeButtonClicked(_ sender: Any) {
        dismiss()
    }
}
