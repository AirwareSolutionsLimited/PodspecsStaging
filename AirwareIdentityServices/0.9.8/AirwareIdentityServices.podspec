Pod::Spec.new do |spec|
    spec.name                     = 'AirwareIdentityServices'
    spec.version                  = '0.9.8'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareIdentityServices-0.9.8" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareIdentityServices Library'
                
                
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.resources = ['build/compose/cocoapods/compose-resources']
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.vendored_frameworks = "AirwareIdentityServices/AirwareIdentityServices.xcframework"
    spec.resource_bundles = {'AirwareIdentityServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end