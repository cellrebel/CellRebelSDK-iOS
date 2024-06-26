Pod::Spec.new do |spec|

  spec.name         = "CellRebelSDK"
  spec.version      = "1.3.2"
  spec.summary      = "CellRebel iOS SDK"

  spec.description  = <<-DESC
  CellRebel has developed the most advanced SDK to analyze mobile connectivity. Our SDK gathers important network characteristics and reports it to our advanced analytics solution that analyzes and presents it in multiple dimensions such as geospatial as well as device views. With these capabilities, the app developer can understand how the network impact its app users and take actions and improve the user experience of the app.
                   DESC

  spec.homepage     = "https://www.cellrebel.com/"
  spec.license          = { :type => 'Proprietary', :text => 'Copyright CellRebel © 2022' }
  spec.author             = { "Vlad Korzun" => "vlad.korzun@cellrebel.com" }
  spec.source       = { :git => "https://github.com/cellrebel/CellRebelSDK-iOS.git", :tag => "#{spec.version}" }
  spec.platform     = :ios
  spec.ios.deployment_target = '12.0'
  spec.ios.frameworks = 'Security', 'LocalAuthentication', 'CoreTelephony', 'CoreLocation'


  spec.ios.preserve_paths = 'CellRebelSDK.xcframework'
  spec.ios.vendored_frameworks = 'CellRebelSDK.xcframework'

end
