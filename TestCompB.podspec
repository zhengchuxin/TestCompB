#
# Be sure to run `pod lib lint TestCompB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestCompB'
  s.version          = '0.1.0'
  s.summary          = 'A short description of TestCompB.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhengchuxin/TestCompB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhengchuxin' => '931140318@qq.com' }
  s.source           = { :git => 'https://github.com/zhengchuxin/TestCompB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

#  s.source_files = 'TestCompB/Classes/**/*'
  
  # s.resource_bundles = {
  #   'TestCompB' => ['TestCompB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  
  if ENV['IS_SOURCE'] || ENV['TestCompB']

       s.public_header_files = 'TestCompB/Classes/**/*.h'
       #s.source_files = 'MyTest/Classes/**/*.{h,m,mm,c}'

        s.subspec 'Controller' do |ss|
           ss.source_files = 'TestCompB/Classes/Controller/*.{h,m}'
         end
        s.subspec 'View' do |ss|
           ss.source_files = 'TestCompB/Classes/View/*.{h,m}'
        end

        s.subspec 'Model' do |ss|
           ss.source_files = 'TestCompB/Classes/Model/*.{h,m}'
        end
        s.resource_bundles = {
                 'TestCompB' => ['TestCompB/Assets/*.png','TestCompB/Classes/**/*.{xib,nib,plist,lsc}'],
              }

        # s.frameworks = 'UIKit', 'MapKit'
         s.dependency 'AFNetworking', '~> 2.3'
         s.dependency 'BeeHive'
  else
        # s.source_files = 'MyTest/Classes/**/*.{h}'

        s.subspec 'Controller' do |ss|
        ss.source_files = 'TestCompB/Classes/Controller/*.{h}'
        end
        s.subspec 'View' do |ss|
        ss.source_files = 'TestCompB/Classes/View/*.{h}'
        end
        s.subspec 'Model' do |ss|
        ss.source_files = 'TestCompB/Classes/Model/*.{h}'
        end
        s.resources = 'TestCompB/Products/TestCompB.bundle','TestCompB/Classes/**/*.bundle'
        s.public_header_files = 'TestCompB/Classes/**/*.h'
        s.vendored_frameworks = 'TestCompB/Products/TestCompB.framework'
        # s.frameworks = 'UIKit', 'MapKit'
        s.dependency 'AFNetworking', '~> 2.3'
        s.dependency 'BeeHive'
  end
  
  
end
