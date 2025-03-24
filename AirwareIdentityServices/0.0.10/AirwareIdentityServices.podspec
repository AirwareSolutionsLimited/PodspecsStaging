Pod::Spec.new do |spec|
    spec.name                     = 'AirwareIdentityServices'
    spec.version                  = '0.0.10'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :http=> ''}
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareIdentityServices Library'
    spec.vendored_frameworks      = 'AirwareIdentityServices.xcframework'
                
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.resources = ['build/compose/cocoapods/compose-resources']
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.resource_bundles = {'AirwareIdentityServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end