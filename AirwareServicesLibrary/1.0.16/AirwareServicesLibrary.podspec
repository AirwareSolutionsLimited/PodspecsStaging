Pod::Spec.new do |spec|
    spec.name                     = 'AirwareServicesLibrary'
    spec.version                  = '1.0.16'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareServicesLibrary-1.0.16" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareServices Shared Library'
                
                
    spec.ios.deployment_target    = '14.0'
                
                
                
                
                
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.vendored_frameworks = "AirwareServicesLibrary/AirwareServicesLibrary.xcframework"
    spec.resource_bundles = {'AirwareServicesLibrary_Privacy' => ['PrivacyInfo.xcprivacy']}
end