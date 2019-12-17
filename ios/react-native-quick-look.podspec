require 'json'

package = JSON.parse(File.read(File.join(__dir__, '../package.json')))

Pod::Spec.new do |s|
  s.name                = package['name']
  s.version             = "0.1.1"
  s.summary             = package['description']
  s.description         = <<-DESC
                            Quick Look View for React Native
                         DESC
  s.homepage            = "https://github.com/benjMic/react-native-quick-look"
  s.license             = package['license']
  s.author              = "benjMic"
  s.source              = { :git => "git@github.com:benjMic/react-native-quick-look.git", :tag => "v#{s.version}" }
  s.requires_arc        = true
  s.platform            = :ios, "7.0"
  s.preserve_paths      = "*.framework"
  s.source_files        = 'ReactNativeQuickLook/*.{h,m}'
  s.dependency 'React'
end
