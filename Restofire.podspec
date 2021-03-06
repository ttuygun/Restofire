Pod::Spec.new do |s|
 s.name = 'Restofire'
 s.version = '2.1.0'
 s.license = { :type => "MIT", :file => "LICENSE" }
 s.summary = 'Restofire is a protocol oriented networking abstraction layer in swift'
 s.description = 'Restofire is a protocol oriented networking abstraction layer in swift that is built on top of Alamofire to use services in a declartive way.'
 s.homepage = 'https://github.com/Restofire/Restofire'
 s.social_media_url = 'https://twitter.com/rahulkatariya91'
 s.authors = { "Rahul Katariya" => "rahulkatariya@me.com" }
 s.source = { :git => "https://github.com/Restofire/Restofire.git", :tag => "v"+s.version.to_s }
 s.platforms     = { :ios => "8.0", :osx => "10.10", :tvos => "9.0", :watchos => "2.0" }
 s.requires_arc = true
 s.pod_target_xcconfig = { "SWIFT_OPTIMIZATION_LEVEL" => "-Owholemodule" }

 s.default_subspec = "Core"
 s.subspec "Core" do |ss|
     ss.source_files  = "Sources/*.swift"
     ss.dependency "Alamofire", "~> 4.2.0"
     ss.framework  = "Foundation"
 end

end
