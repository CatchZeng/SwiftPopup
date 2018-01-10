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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func popupButtonClicked(_ sender: Any) {
        alertDemo.show()
    }
}

