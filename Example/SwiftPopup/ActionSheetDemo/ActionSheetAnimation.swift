//
//  ActionSheetAnimation.swift
//  SwiftPopup_Example
//
//  Created by CatchZeng on 2018/1/10.
//  Copyright © 2018年 CocoaPods. All rights reserved.
//

import Foundation

import UIKit

open class ActionSheetShowAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    
    public var duration: TimeInterval = 0.8
    public var delay: TimeInterval = 0.0
    public var springWithDamping: CGFloat = 0.8
    public var springVelocity: CGFloat = 2.0
    
    open func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    open func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let toViewController = transitionContext.viewController( forKey: UITransitionContextViewControllerKey.to),
            let toView = transitionContext.view( forKey: UITransitionContextViewKey.to)
            else {
                return
        }
        
        let containerView = transitionContext.containerView
        toView.frame = transitionContext.finalFrame(for: toViewController)
        containerView.addSubview(toView)
        
        
        toView.transform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height)
        UIView.animate(withDuration: duration,
                       delay: delay,
                       usingSpringWithDamping: springWithDamping,
                       initialSpringVelocity: springVelocity,
                       options: .curveEaseInOut, animations: {
                                toView.transform = CGAffineTransform(translationX: 0, y: 0)
        }) { (finished) in
            transitionContext.completeTransition(finished)
        }
    }
}

open class ActionSheetDismissAnimation: NSObject, UIViewControllerAnimatedTransitioning {
    
    public var duration: TimeInterval = 0.5
    public var delay: TimeInterval = 0.0
    
    open func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return duration
    }
    
    open func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let fromView = transitionContext.view( forKey: UITransitionContextViewKey.from)
            else {
                return
        }
        
        UIView.animate(withDuration: duration,
                       delay: delay,
                       options: .curveEaseInOut,
                       animations: {
                        fromView.transform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height)
                        fromView.alpha = 0.0
        }) { (finished) in
            fromView.transform = CGAffineTransform(translationX: 0, y: 0)
            fromView.alpha = 1.0
            transitionContext.completeTransition(finished)
        }
    }
}
