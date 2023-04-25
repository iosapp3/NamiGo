
Pod::Spec.new do |s|
  s.name         =  'NamiGo'
  s.version      =  '1.1'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     =  'https://github.com/iosapp3/NamiGo'
  s.authors      =  { 'NamiGo' => 'info@digitalworld.com.sa'}
  s.source       =  { :git => 'https://github.com/iosapp3/NamiGo.git', :tag => s.version }

  s.summary      =  'Safe and Secure payment class'
  s.description  =  'Safe and Secure payment class'
  s.platforms = { :ios => '13.0' }
  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5.0']
  s.vendored_frameworks = "Framework/NamiGo.framework"
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
