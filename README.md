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

#### Dismiss

```swift
yourCustomPopupViewController.dismiss()
```

####  BackView Color, support IBInspectable.

```swift
backViewColor: UIColor
```

![IBInspectable](https://github.com/CatchZeng/SwiftPopup/raw/master/IBInspectable.png)

#### Custom animatedTransitioning, default is  SwiftPopupShowAnimation&SwiftPopupDismissAnimation

```swift
showAnimation: UIViewControllerAnimatedTransitioning
dismissAnimation: UIViewControllerAnimatedTransitioning
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
