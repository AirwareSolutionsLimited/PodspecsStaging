Pod::Spec.new do |spec|
    spec.name                     = 'AirwareCoreServices'
    spec.version                  = '1.0.1'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :http=> ''}
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareCoreServices Library'
    spec.vendored_frameworks      = 'AirwareCoreServices.xcframework'
                
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.resource_bundles = {'AirwareCoreServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end