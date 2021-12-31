#
# Be sure to run `pod lib lint PokeSDKSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PokeSDKSwift'
  s.version          = '0.1.1'
  s.summary          = 'This is the PokeSDKSwift for iOS. This SDK use Poke API for HTTP requets.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'This is the PokeSDKSwift for iOS. This SDK use Poke API for HTTP requets, see here the API: https://pokeapi.co/docs/'

  s.homepage         = 'https://github.com/Mahia113/PokeSDKSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'José Luis López' => 'joseluiss.113@gmail.com' }
  s.source           = { :git => 'https://github.com/Mahia113/PokeSDKSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '13.0'
  
  s.swift_version = '5.0'
  
  s.source_files = 'PokeSDKSwift/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PokeSDKSwift' => ['PokeSDKSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
