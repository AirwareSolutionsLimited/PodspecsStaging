Pod::Spec.new do |spec|
    spec.name                     = 'AirwareInfrastructureServices'
    spec.version                  = '0.9.1'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareInfrastructureServices-0.9.1" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareInfrastructureServices Library'
                
                
    spec.ios.deployment_target    = '14'
    spec.dependency 'KMPNativeCoroutinesCombine', '1.0.0-ALPHA-37'
                
                
                
                
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.vendored_frameworks = "AirwareInfrastructureServices/AirwareInfrastructureServices.xcframework"
    spec.resource_bundles = {'AirwareInfrastructureServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end