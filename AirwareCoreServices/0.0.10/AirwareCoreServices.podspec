Pod::Spec.new do |spec|
    spec.name                     = 'AirwareCoreServices'
    spec.version                  = '0.0.10'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareCoreServices-0.0.10" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareCoreServices Library'
                
                
    spec.ios.deployment_target    = '13.5'
                
                
                
                
                
    spec.libraries = 'c++', 'sqlite3'
    spec.swift_version = '5.0'
    spec.resource_bundles = { 'AirwareServices_Privacy' => ['PrivacyInfo.xcprivacy'] }
    spec.vendored_frameworks = 'AirwareCoreServices/AirwareCoreServices.xcframework'
end