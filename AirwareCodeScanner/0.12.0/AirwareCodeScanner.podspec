Pod::Spec.new do |spec|
    spec.name                     = 'AirwareCodeScanner'
    spec.version                  = '0.12.0'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareCodeScanner-0.12.0" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareCodeScanner Library'
                
                
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.resources = ['build/compose/cocoapods/compose-resources']
    spec.swift_version = '5.0'
    spec.libraries = 'c++', 'sqlite3'
    spec.vendored_frameworks = "AirwareCodeScanner/AirwareCodeScanner.xcframework"
    spec.resource_bundles = {'AirwareCodeScanner_Privacy' => ['PrivacyInfo.xcprivacy']}
end