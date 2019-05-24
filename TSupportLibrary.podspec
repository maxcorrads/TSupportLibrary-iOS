#
#  Be sure to run `pod spec lint TSupportLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "TSupportLibrary"
  spec.version      = "0.9.0"
  spec.summary      = "TSupportLibrary"
  spec.homepage     = "https://github.com/maxcorrads/TSupportLibrary-iOS"
  spec.license      = "MIT"
  spec.author       = { "matteocorradin" => "matteo@app24h.it" }
  spec.platform     = :ios
  spec.source       = { :git => "https://github.com/maxcorrads/TSupportLibrary-iOS.git", :tag => "#{spec.version}" }
  spec.source_files  = "TSupportLibrary/**/*.swift" , "TSupportLibrary/**/*.{h,m}"
  spec.platform = :ios
  spec.swift_version = "5"
  spec.ios.deployment_target  = '8.0'
end
