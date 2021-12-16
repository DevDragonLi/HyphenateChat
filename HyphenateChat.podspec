Pod::Spec.new do |s|
  s.name             = 'HyphenateChat'
  s.version          = '3.8.7'
  s.summary          = 'An Objective-C client for IM service'
  s.description      = "HyphenateChat is a cloud-based PaaS (Platform as a Service) for Mobile Instant Messaging (MIM). We provide in-app messaging features such as one-to-one chat, group chat, voice message, picture/video/file sharing, location sharing, real-time voice/video calling, etc."
  s.homepage         = 'http://www.easemob.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'IM SDK ' => 'DragonLi@163.com' }
  s.source           = { :git => 'git@192.168.xx/iOS/Hyphenate.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '11.0'

  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  
  s.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC'
  }
  
  s.ios.vendored_frameworks = 'Framework/3.8.7/*.framework'

end
