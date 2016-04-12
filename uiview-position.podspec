#
# Be sure to run `pod lib lint uiview-position.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "uiview-position"
  s.version          = "0.1.0"
  s.summary          = "Convenience methods for positioning easily UIView relative to other views and points"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = 'Convenience methods for positioning easily UIView relative to other views and points.'


  s.homepage         = "https://github.com/AbZorbaGames/uiview-position"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "AbZorbaGames" => "ios@abzorbagames.com" }
  s.source           = { :git => "https://github.com/AbZorbaGames/uiview-position.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true


    s.default_subspec = 'Obj'

    s.subspec 'Obj' do |obj|
    obj.source_files = 'Pod/Classes/*' , '*.{h,m}'
    obj.exclude_files = 'Pod/Classes/Swift/*' , '*.swift'
    end

    s.subspec 'Swift' do |swift|
    swift.ios.deployment_target = '8.0'
    swift.source_files = 'Pod/Classes/Swift/*' , '*.swift'
    swift.exclude_files = 'Pod/Classes/*' , '*.{h,m}'

    end

  s.resource_bundles = {
    'uiview-position' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
