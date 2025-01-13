Pod::Spec.new do |spec|
    spec.name                     = 'AirwareLocationServices'
    spec.version                  = '0.9.3'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareLocationServices-0.9.3" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareLocationServices Library'
                
                
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.vendored_frameworks = "AirwareLocationServices/AirwareLocationServices.xcframework"
    spec.resource_bundles = {'AirwareLocationServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end