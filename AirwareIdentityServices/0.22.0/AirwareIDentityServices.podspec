Pod::Spec.new do |spec|
    spec.name                     = 'AirwareIDentityServices'
    spec.version                  = '0.22.0'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareIDentityServices-0.22.0" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareIDentityServices Library'
                
                
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.resources = ['build/compose/cocoapods/compose-resources']
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.vendored_frameworks = "AirwareIDentityServices/AirwareIDentityServices.xcframework"
    spec.resource_bundles = {'AirwareIdentityServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end