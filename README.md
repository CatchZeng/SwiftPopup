# SwiftPopup

![Swift](https://img.shields.io/badge/Swift-5.0-green.svg)
[![Version](https://img.shields.io/cocoapods/v/SwiftPopup.svg?style=flat)](http://cocoapods.org/pods/SwiftPopup)
[![License](https://img.shields.io/cocoapods/l/SwiftPopup.svg?style=flat)](http://cocoapods.org/pods/SwiftPopup)
[![Platform](https://img.shields.io/cocoapods/p/SwiftPopup.svg?style=flat)](http://cocoapods.org/pods/SwiftPopup)

#### ⚠️ **To use with iOS 9.0+ (Swift 4.x) please ensure you are using >= 4.2.0** ⚠️

#### ⚠️ **To use with iOS 10.0+ (Swift 5.x) please ensure you are using >= 5.0.0** ⚠️

## Features

- swift 5.0
- Fully customized components
- Support auto-rotation
- Support IBInspectable
- Well-adapted

## Requirements

- iOS 10.0+

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

![Effect](https://github.com/CatchZeng/SwiftPopup//raw/master/demo.gif)

## Usage

#### Create a SwiftPopup subclass.

```swift
class YourCustomPopupViewController: SwiftPopup {
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

#### Show above viewcontroller with completion callback.

```swift
yourCustomPopupViewController.show(above: viewController) {
    //Handle cpmpletion.
}
```

#### Dismiss

```swift
yourCustomPopupViewController.dismiss()
```

#### Dismiss with completion callback.

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

#### BackView Color, support IBInspectable.

```swift
backViewColor: UIColor
```

![IBInspectable](https://github.com/CatchZeng/SwiftPopup/raw/master/IBInspectable.png)

#### Custom animatedTransitioning, default is SwiftPopupShowAnimation&SwiftPopupDismissAnimation. If you do not like default animation, you can set showAnimation&dismissAnimation to what you want, like [ActionSheetAnimation](https://github.com/CatchZeng/SwiftPopup/blob/master/Example/SwiftPopup/ActionSheetDemo/ActionSheetAnimation.swift).

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

// iOS 9.0+
pod 'SwiftPopup', '~> 4.2.0'

// iOS 10.0+
pod 'SwiftPopup', '~> 5.0.0'
```

## Author

CatchZeng, 891793848@qq.com

## License

SwiftPopup is available under the MIT license. See the LICENSE file for more info.
