Pod::Spec.new do |spec|
    spec.name                     = 'AirwareInformationServices'
    spec.version                  = '1.0.0'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :http=> ''}
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareInformationServices Library'
    spec.vendored_frameworks      = 'AirwareInformationServices.xcframework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '14'
                
                
                
                
                
    spec.resource_bundles = {'AirwareInformationServices_Privacy' => ['PrivacyInfo.xcprivacy']}
end