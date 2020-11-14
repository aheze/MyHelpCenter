#
#  Be sure to run `pod spec lint SupportDocs.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name          = "SupportDocs"
  spec.version       = "0.0.30"
  spec.summary       = "Generate help centers for your iOS apps, with Markdown!"
  spec.description   = <<-DESC
                   A lightweight Swift framework written in SwiftUI. Generate help centers using Markdown, hosted on GitHub pages.
                DESC
  spec.homepage      = "http://github.com/aheze/SupportDocs"
  spec.license       = { :type => "MIT", :file => "LICENSE" }



  spec.authors       = 'A. Zheng', 'H. Kamran'
  spec.platform      = :ios, "13.0"

  spec.source        = { :git => "https://github.com/aheze/SupportDocs.git", :tag => spec.version.to_s }

  spec.source_files  = "Sources/SupportDocs/**/*"
  
  spec.swift_version = "5.3"
  

end
