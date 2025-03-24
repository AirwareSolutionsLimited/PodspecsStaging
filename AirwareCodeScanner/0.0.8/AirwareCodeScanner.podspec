Pod::Spec.new do |spec|
    spec.name                     = 'AirwareCodeScanner'
    spec.version                  = '0.0.8'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :http=> ''}
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareCodeScanner Library'
    spec.vendored_frameworks      = 'AirwareCodeScanner.xcframework'
                
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.resources = ['build/compose/cocoapods/compose-resources']
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.resource_bundles = {'AirwareCodeScanner_Privacy' => ['PrivacyInfo.xcprivacy']}
end