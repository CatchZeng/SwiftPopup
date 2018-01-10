//
//  SwiftPopup.swift
//  SwiftPopup
//
//  Created by CatchZeng on 2018/1/8.
//

import UIKit
import Foundation
import SnapKit

open class SwiftPopup: UIViewController {
    
    @IBInspectable public var backViewColor: UIColor = UIColor(white: 0.1, alpha: 0.5)
    
    // Custom animatedTransitioning
    public var showAnimation: UIViewControllerAnimatedTransitioning? = SwiftPopupShowAnimation()
    public var dismissAnimation: UIViewControllerAnimatedTransitioning? = SwiftPopupDismissAnimation()
    
    public var isShowing: Bool {
        return mIsShowing
    }
    private var mIsShowing: Bool = false
    
    // MARK: Life Cycle
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        commonInit()
    }
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
    }
    
    // MARK: Public Methods
    
    public func show(above viewController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController,
                           completion: (()-> Void)? = nil) {
        mIsShowing = true
        
        viewController?.present(self, animated: true, completion: completion)
    }
    
    public func dismiss(completion: (()-> Void)? = nil) {
        dismiss(animated: true) {
            self.mIsShowing = false
            completion?()
        }
    }
    
    // MARK: Private Methods
    
    fileprivate func commonInit() {
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }
}

extension SwiftPopup: UIViewControllerTransitioningDelegate {
    
    public func presentationController(forPresented presented: UIViewController,
                                       presenting: UIViewController?,
                                       source: UIViewController) -> UIPresentationController? {
        let controller = SwiftPopupPresentationController(presentedViewController: presented,
                                                       presenting: presenting)
        controller.backViewColor = backViewColor
        
        return controller
    }
    
    public func animationController(forPresented presented: UIViewController,
                                    presenting: UIViewController,
                                    source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return showAnimation
    }
    
    public func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return dismissAnimation
    }
}
