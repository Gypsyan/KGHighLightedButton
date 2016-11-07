Pod::Spec.new do |s|
  s.name         = "KGHighLightedButton"
  s.version      = "1.0.0"
  s.summary      = "Add Ripple action around a button"
  s.homepage     = "https://github.com/Gypsyan/KGHighLightedButton"
  s.license      = 'Apache License, Version 2.0'
  s.author             = { "Ananth" => "ananthanmymail@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/Gypsyan/KGHighLightedButton.git", :tag => s.version }
  s.source_files  = "KGHighLightedButton/*.swift"
end
