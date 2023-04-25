
Pod::Spec.new do |s|
  s.name         =  'NamiGo'
  s.version      =  '1.1'
  s.license      =  { :type => 'MIT', :file => 'LICENSE' }
  s.homepage     =  'https://github.com/iosapp3/NamiGo'
  s.authors      =  { 'PSP' => 'info@digitalworld.com.sa'}
  s.source       =  { :git => 'https://github.com/iosapp3/NamiGo', :tag => s.version.to_s }

  s.summary      =  'Safe and Secure payment class'
  s.description  =  'Safe and Secure payment class'
  s.platforms = { :ios => '12.1' }
  s.vendored_frameworks = "Framework/NamiGo.framework"
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
