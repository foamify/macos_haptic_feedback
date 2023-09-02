#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint macos_haptic_feedback.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'macos_haptic_feedback'
  s.version          = '1.0.0'
  s.summary          = 'A new Flutter plugin project.'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/foamify/macos_haptic_feedback'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Damien Wise' => 'mrdamywise@gmail.com' }

  s.source           = { :path => '.' }
  s.source_files     = 'Classes/**/*'
  s.dependency 'FlutterMacOS'

  s.platform = :osx, '10.11'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'
end
