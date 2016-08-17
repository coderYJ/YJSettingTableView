Pod::Spec.new do |s|
    s.name         = "YJSettingTableView"
    s.version      = "1.0.1"
    s.ios.deployment_target = '7.0'
    s.summary      = "A delightful setting interface framework."
    s.homepage     = "https://github.com/coderYJ/YJSettingTableView"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "coderYJ" => "wenyanjun1314@163.com" }
    s.social_media_url   = "http://weibo.com/u/5348162268"
    s.source       = { :git => "https://github.com/coderYJ/YJSettingTableView.git", :tag => s.version }
    s.source_files  = "YJSettingTableView/*.{h,m}"
    s.resources          = "YJSettingTableView/YJSettingTableView.bundle"
    s.requires_arc = true
end
