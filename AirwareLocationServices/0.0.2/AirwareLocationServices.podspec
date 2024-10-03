Pod::Spec.new do |spec|
    spec.name                     = 'AirwareLocationServices'
    spec.version                  = '0.0.2'
    spec.homepage                 = 'https://github.com/AirwareSolutionsLimited/PodspecsStaging'
    spec.source                   = { :git => "https://github.com/AirwareSolutionsLimited/AirwareServicesStaging.git", :tag => "AirwareLocationServices-0.0.2" }
    spec.authors                  = { "Airware" => "mobile@airware.aero" }
    spec.license                  = 'Apache License, Version 2.0'
    spec.summary                  = 'AirwareLocationServices Library'
    spec.vendored_frameworks      = 'AirwareLocationServices.xcframework'
    spec.libraries                = 'c++'
    spec.ios.deployment_target    = '13.5'
                
                
                
                
                
    spec.resource_bundles = {'KotlinMultiplatformPrivacyManifest' => ['PrivacyInfo.xcprivacy']}
end