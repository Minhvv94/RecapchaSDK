#
#  Be sure to run `pod spec lint RecapchaSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "RecapchaSDK"
  spec.version      = "1.0.7"
  spec.summary      = "Vendored RecapchaSDK Framework in a spec test pod."
  spec.description  = <<-DESC
* UI extensions
*  pod 'RecapchaSDK'
* Đây là SDK của vtv live

* Tác giả : Vũ Văn Minh

* Hiện tại chưa biết viết cái méo gì cả nên viiết test vài dòng. ok
                        DESC
  spec.module_name  = 'RecapchaSDK'
  spec.homepage     = "https://www.vtvlive.vn/"

  spec.license                 = { :type => "MIT", :file => "../LICENSE" }

  spec.author             = { "Minhvu6533" => "minhvv@vtvlive.vn" }

  spec.platform          = :ios
  spec.ios.deployment_target = "12.0"

  spec.source       = { :git => "https://github.com/Minhvv94/RecapchaSDK.git", :tag => "1.0.7" }
  #spec.source                       = { :path => "RecapchaSDK.xcframework" }
  spec.preserve_paths               = "*"

  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.source_files = "**/*.{h,m,swift}" 
  spec.requires_arc = true
  
  spec.dependency = "RxSwift"
  spec.pod_target_xcconfig = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES' }

end
