Pod::Spec.new do |s|
  s.name             = 'SCCameraKitReferenceUI'
  s.version          = '1.40.16'
  s.summary          = 'Custom implementation of Snap CameraKit Reference UI'
  s.description      = 'A custom fork of Snap’s CameraKit Reference UI to allow UI modifications.'
  s.homepage         = 'https://github.com/martinstefoni/camera-kit-ios-sdk'
  s.author           = { 'Snap Inc.' => 'support@snapchat.com' }
  s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/martinstefoni/camera-kit-ios-sdk.git' }
  s.swift_version    = '5.0'
  s.platform         = :ios, '13.0'
  s.source           = { :git => 'https://github.com/martinstefoni/camera-kit-ios-sdk.git', :tag => s.version }
  s.source_files     = 'Sources/SCSDKCameraKitReferenceUI/**/*.{swift,h,m}'
  s.resources        = ['Sources/SCSDKCameraKitReferenceUI/**/*.{xib,xcassets,strings}']
  s.dependency       'SCCameraKit'
end
