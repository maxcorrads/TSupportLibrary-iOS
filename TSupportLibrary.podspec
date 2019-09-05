#
#  Be sure to run `pod spec lint TSupportLibrary.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "TSupportLibrary"
  spec.version      = "0.15.0"
  spec.summary      = "TSupportLibrary"
  spec.homepage     = "https://github.com/maxcorrads/TSupportLibrary-iOS"
  spec.license      = { :type => 'MIT', :text => <<-LICENSE
Copyright (c) 2019 Matteo Corradin
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
    LICENSE
  }
  spec.author       = { "matteocorradin" => "matteo@app24h.it" }
  spec.platform     = :ios
  spec.source       = { :git => "https://github.com/maxcorrads/TSupportLibrary-iOS.git", :tag => "#{spec.version}" }
  spec.source_files  = "TSupportLibrary/**/*.swift" , "TSupportLibrary/**/*.{h,m}"
  spec.platform = :ios
  spec.swift_version = "5"
  spec.ios.deployment_target  = '8.0'
end
