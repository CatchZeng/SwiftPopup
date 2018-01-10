# SwiftPopup

[![CI Status](http://img.shields.io/travis/CatchZeng/SwiftPopup.svg?style=flat)](https://travis-ci.org/CatchZeng/SwiftPopup)
[![Version](https://img.shields.io/cocoapods/v/SwiftPopup.svg?style=flat)](http://cocoapods.org/pods/SwiftPopup)
[![License](https://img.shields.io/cocoapods/l/SwiftPopup.svg?style=flat)](http://cocoapods.org/pods/SwiftPopup)
[![Platform](https://img.shields.io/cocoapods/p/SwiftPopup.svg?style=flat)](http://cocoapods.org/pods/SwiftPopup)

## Features

* Fully customized components
* Support auto-rotation
* Support IBInspectable
* Well-adapted

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

![Effect](https://github.com/CatchZeng/SwiftPopup//raw/master/effect.gif)

## Usage

#### Create a SwiftPopup subclass.

```swift
class TestViewController: SwiftPopup {
}
```

#### Show

```swift
yourCustomPopupViewController.show()
```

#### Show above viewcontroller.

```swift
yourCustomPopupViewController.show(above: viewController)
```

#### Show above viewcontroller with  completion callback.

```swift
yourCustomPopupViewController.show(above: viewController) {
    //Handle cpmpletion.
}
```

#### Dismiss

```swift
yourCustomPopupViewController.dismiss()
```

#### Dismiss with  completion callback.
```
dismiss {
    //Handle cpmpletion.
}
```

#### isShowing

```
if yourCustomPopupViewController.isShowing {
    //Handle showing.
} else {
    //Handle is not showing.
}
```

####  BackView Color, support IBInspectable.

```swift
backViewColor: UIColor
```

![IBInspectable](https://github.com/CatchZeng/SwiftPopup/raw/master/IBInspectable.png)

#### Custom animatedTransitioning, default is  SwiftPopupShowAnimation&SwiftPopupDismissAnimation. If you do not like default animation, you can set showAnimation&dismissAnimation to what you want.

```swift
showAnimation: UIViewControllerAnimatedTransitioning
dismissAnimation: UIViewControllerAnimatedTransitioning
```

#### SwiftPopupShowAnimation&SwiftPopupDismissAnimation properties.
```
yourCustomPopupViewController.showAnimation.duration = 2.0
yourCustomPopupViewController.showAnimation.delay = 1.0
yourCustomPopupViewController.showAnimation.springWithDamping = 1.0
yourCustomPopupViewController.showAnimation.springVelocity = 0.0
```

## Installation

SwiftPopup is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftPopup'
```

## Author

CatchZeng, 891793848@qq.com

## License

SwiftPopup is available under the MIT license. See the LICENSE file for more info.
