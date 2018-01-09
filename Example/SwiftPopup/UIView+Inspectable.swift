//
//  UIView+Inspectable.swift
//  SwiftPopup
//
//  Created by CatchZeng on 2017/11/30.
//

import Foundation
import UIKit

extension UIView {
    @IBInspectable public var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
        get {return layer.cornerRadius}
    }
}
