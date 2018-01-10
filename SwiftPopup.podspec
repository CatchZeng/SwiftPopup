#
# Be sure to run `pod lib lint SwiftPopup.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftPopup'
  s.version          = '0.1.2'
  s.summary          = 'Swift Popup.'
  s.description      = 'Swift fully customized popup view controller.'
  s.homepage         = 'https://github.com/CatchZeng/SwiftPopup'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CatchZeng' => '891793848@qq.com' }
  s.source           = { :git => 'https://github.com/CatchZeng/SwiftPopup.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'SwiftPopup/Classes/**/*'
  s.dependency 'SnapKit'
end
