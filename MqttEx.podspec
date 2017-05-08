#
# Be sure to run `pod lib lint MqttEx.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MqttEx'
  s.version          = '0.1.4'
  s.summary          = 'MqttEx subscribe on the one topic multiple times'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC

This package includes the mosquitto library and a MqttKit from https://github.com/mobile-web-messaging/MQTTKit.
The original MqttClientEx a extension of MqttClient with the ability to subscribe the same topic multiple times.

                       DESC

  s.homepage         = 'https://github.com/xuwenquan/MqttEx'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xuwq' => 'xuwenquan2015@icloud.com' }
  s.source           = { :git => 'https://github.com/xuwenquan/MqttEx.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/xuwenquan'

  s.ios.deployment_target = '8.0'

  s.source_files = 'MqttEx/Classes/**/*'
  
  # s.resource_bundles = {
  #   'MqttEx' => ['MqttEx/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
