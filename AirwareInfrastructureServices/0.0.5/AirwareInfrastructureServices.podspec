Pod::Spec.new do |spec|
    spec.name                     = 'AirwareInfrastructureServices'
    spec.version                  = '0.0.5'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareInfrastructureServices-0.0.5" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareInfrastructureServices Library'
                
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.swift_version = '5.0'
    spec.vendored_frameworks = "AirwareInfrastructureServices/AirwareInfrastructureServices.xcframework"
    spec.resource_bundles = {'AirwareInfrastructureServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end