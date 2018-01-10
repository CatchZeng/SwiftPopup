//
//  ViewController.swift
//  SwiftPopup
//
//  Created by CatchZeng on 01/09/2018.
//  Copyright (c) 2018 CatchZeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let alertDemo = AlertDemoViewController()
    let actionSheetDemo = ActionSheetDemoViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        actionSheetDemo.showAnimation = ActionSheetShowAnimation()
        actionSheetDemo.dismissAnimation = ActionSheetDismissAnimation()
        
//        alertDemo.showAnimation.duration = 2.0
//        alertDemo.showAnimation.delay = 1.0
//        alertDemo.showAnimation.springWithDamping = 1.0
//        alertDemo.showAnimation.springVelocity = 0.0
    }
    
    @IBAction func alertButtonClicked(_ sender: Any) {
        alertDemo.show()
        //alertDemo.show(above: self)
//        alertDemo.show(above: self) {
//        }
    }
    
    @IBAction func actionSheetButtonClicked(_ sender: Any) {
        actionSheetDemo.show()
    }
}

