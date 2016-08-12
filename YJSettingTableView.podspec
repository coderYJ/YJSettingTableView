#
#  Be sure to run `pod spec lint iOS_Category.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
s.name         = "YJSettingTableView"
s.version      = "1.0.0"
s.ios.deployment_target = '6.0'
s.osx.deployment_target = '10.8'
s.summary      = "A delightful setting interface framework."
s.homepage     = "https://github.com/wenyanjun/YJSettingTableView"
s.license      = "MIT"
s.author             = { "simplyou" => "simplyou@163.com" }
s.social_media_url   = "http://weibo.com/exceptions"
s.source       = { :git => "https://github.com/wenyanjun/YJSettingTableView.git", :tag => s.version }
s.source_files  = "YJSettingTableView"
s.requires_arc = true
end
